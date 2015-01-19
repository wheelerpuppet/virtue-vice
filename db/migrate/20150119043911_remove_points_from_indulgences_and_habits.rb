class RemovePointsFromIndulgencesAndHabits < ActiveRecord::Migration
  def change
    remove_column :habits, :points
    remove_column :indulgences, :points
  end
end
