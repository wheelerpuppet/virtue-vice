class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :type
      t.string :description
      t.integer :value
      t.timestamp :date
      t.integer :author_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
