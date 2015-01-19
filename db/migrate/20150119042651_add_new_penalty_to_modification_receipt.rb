class AddNewPenaltyToModificationReceipt < ActiveRecord::Migration
  def change
    add_column :modification_receipts, :new_penalty, :integer
  end
end
