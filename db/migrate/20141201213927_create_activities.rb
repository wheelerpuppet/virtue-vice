class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :verb
      t.integer :amount
      t.string :subject
      t.string :interval
      t.string :relationship
      t.integer :user_id
      t.integer :points

      t.timestamps
    end
  end
end
