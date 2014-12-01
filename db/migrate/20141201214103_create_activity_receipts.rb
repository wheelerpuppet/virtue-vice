class CreateActivityReceipts < ActiveRecord::Migration
  def change
    create_table :activity_receipts do |t|
      t.integer :amount
      t.integer :activity_id
      t.datetime :time_stamp

      t.timestamps
    end
  end
end
