class UsersStocksJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :stocks do |t|
      t.index [:user_id, :stock_id]
    end
  end
end
