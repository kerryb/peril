class AddCorrectToEvent < ActiveRecord::Migration
  def change
    add_column :events, :correct, :boolean
  end
end
