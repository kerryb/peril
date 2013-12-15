require 'spec_helper'

describe ScoredEvent do
  before do
    @answer = FactoryGirl.create(:answer)
    @game   = @answer.category.game
    @reward = FactoryGirl.create(:reward, game: @game)
    @player = FactoryGirl.create(:player, game: @game)
  end

  context "when correct" do
    it "adds the proper score to the proper player before saving" do
      event = FactoryGirl.build( :scored_event, game:   @game,
                                answer: @answer,
                                player: @player,
                                correct: true )
      expect(ScoredEvent.last).to be_nil
      event.save!
      saved = ScoredEvent.last
      expect(saved.game).to   eq(@game)
      expect(saved.answer).to eq(@answer)
      expect(saved.player).to eq(@player)
      expect(@player.score).to eq @reward.score
    end

    it "reduces the score when destroyed" do
      event = FactoryGirl.create( :scored_event, game:   @game,
                                 answer: @answer,
                                 player: @player,
                                 correct: true )
      expect(@player.score).to eq(@reward.score)
      event.destroy
      expect(@player.score).to be_zero
    end
  end

  context "when wrong" do
    it "subtracts the proper score from the proper player before saving" do
      FactoryGirl.create( :scored_event, game:   @game,
                         answer: @answer,
                         player: @player,
                         correct: false )
      expect(@player.score).to eq(-@reward.score)
    end

    it "adds the score back on when destroyed" do
      event = FactoryGirl.create( :scored_event, game:   @game,
                                 answer: @answer,
                                 player: @player,
                                 correct: true )
      expect(@player.score).to eq(@reward.score)
      event.destroy
      expect(@player.score).to be_zero
    end
  end

  it "quietly does nothing when the answer is removed before the event" do
    event = FactoryGirl.create( :scored_event, game:   @game,
                               answer: @answer,
                               player: @player )
    @answer.destroy
    expect do
      event.reload.destroy
    end.not_to raise_error(Exception)
  end
end
