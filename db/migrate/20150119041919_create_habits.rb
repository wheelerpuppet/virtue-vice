class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :verb
      t.integer :amount
      t.string :subject
      t.integer :interval_id
      t.integer :user_id
      t.integer :points

      t.timestamps
    end
  end
end
