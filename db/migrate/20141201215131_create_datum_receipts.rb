class CreateDatumReceipts < ActiveRecord::Migration
  def change
    create_table :datum_receipts do |t|
      t.decimal :amount
      t.datetime :time_stamp
      t.integer :data_id

      t.timestamps
    end
  end
end
