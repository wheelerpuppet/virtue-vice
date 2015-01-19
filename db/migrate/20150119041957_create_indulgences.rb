class CreateIndulgences < ActiveRecord::Migration
  def change
    create_table :indulgences do |t|
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
