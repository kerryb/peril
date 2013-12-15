class AnswersController < ApplicationController
  ###############
  ### Filters ###
  ###############

  before_filter :find_game

  ###############
  ### Actions ###
  ###############

  def show
    @answer = @game.answer_for(params[:category_slug], params[:reward_score]) or
      fail ActiveRecord::RecordNotFound
    @answer.update_attributes viewed_at: Time.now
  end
end
