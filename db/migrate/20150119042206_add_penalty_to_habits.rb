class AddPenaltyToHabits < ActiveRecord::Migration
  def change
    add_column :habits, :penalty, :integer, default: 0
  end
end
