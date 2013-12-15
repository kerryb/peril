class Player < ActiveRecord::Base
  ####################
  ### Associations ###
  ####################

  belongs_to   :game
  acts_as_list scope: :game

  ###################
  ### Validations ###
  ###################

  validates :name,  presence:     true
  validates :score, presence:     true,
                    numericality: { only_integer: true }
end
