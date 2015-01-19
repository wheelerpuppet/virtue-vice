class AddToughLoveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tough_love, :boolean, default: true

  end
end
