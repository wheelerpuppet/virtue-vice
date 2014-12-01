class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :label
      t.decimal :amount
      t.integer :activity_id

      t.timestamps
    end
  end
end
