class AddStockIdsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :stocks, :text, array:true, default: []
  end
end
