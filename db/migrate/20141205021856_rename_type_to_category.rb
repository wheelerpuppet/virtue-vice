class RenameTypeToCategory < ActiveRecord::Migration
  def change
    rename_column :cards, :type, :category
    rename_column :bounties, :type, :category
  end
end
