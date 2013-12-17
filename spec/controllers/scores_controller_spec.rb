require 'spec_helper'

describe ScoresController do
  before do
    @answer = FactoryGirl.create(:answer, viewed_at: Time.now)
    @game   = @answer.category.game
    @reward = FactoryGirl.create(:reward, game: @game)
    @player = FactoryGirl.create(:player, game: @game)
  end

  it "fetches the referenced game" do
    get :create, game_slug: @game.slug, player_id: @player.id
    expect(assigns(:game)).to eq(@game)
  end

  it "fetches the most recently viewed answer" do
    FactoryGirl.create(:answer, category: @answer.category)
    get :create, game_slug: @game.slug, player_id: @player.id
    expect(assigns(:answer)).to eq(@answer)
  end

  it "fetches the referenced player" do
    get :create, game_slug: @game.slug, player_id: @player.id
    expect(assigns(:player)).to eq(@player)
  end

  context "when the answer was correct" do
    it "increments the score" do
      expect {
        get :create, game_slug: @game.slug, player_id: @player.id, correct: true
      }.to change { @player.reload.score }.by @reward.score
    end

    it "renders the answer confirmation" do
      get :create, game_slug: @game.slug, player_id: @player.id, correct: true
      expect(response).to render_template "answers/confirm"
    end
  end

  context "when the answer was wrong" do
    it "decrements the score" do
      expect {
        get :create, game_slug: @game.slug, player_id: @player.id, correct: false
      }.to change { @player.reload.score }.by(-@reward.score)
    end

    it "re-renders the answer" do
      get :create, game_slug: @game.slug, player_id: @player.id, correct: false
      expect(response).to render_template "answers/show"
    end
  end

  it "just redirects if it cannot score an answer" do
    @answer.update_attributes(viewed_at: nil)
    get :create, game_slug: @game.slug, player_id: @player.id
    expect(response).to be_redirect
  end
end
