class CreateModificationReceipts < ActiveRecord::Migration
  def change
    create_table :modification_receipts do |t|
      t.integer :new_points
      t.integer :activity_id
      t.datetime :time_stamp

      t.timestamps
    end
  end
end
