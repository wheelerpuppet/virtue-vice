class CreateSingleActions < ActiveRecord::Migration
  def change
    create_table :single_actions do |t|
      t.string :name
      t.boolean :is_complete
      t.datetime :due_date
      t.integer :user_id
      t.integer :points

      t.timestamps
    end
  end
end
