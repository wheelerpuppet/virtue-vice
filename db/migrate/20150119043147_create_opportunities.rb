class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.boolean :is_complete
      t.datetime :due_date
      t.string :user_id
      t.integer :points

      t.timestamps
    end
  end
end
