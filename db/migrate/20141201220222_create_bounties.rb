class CreateBounties < ActiveRecord::Migration
  def change
    create_table :bounties do |t|
      t.string :description
      t.integer :value
      t.timestamp :deadline
      t.string :type
      t.integer :author_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
