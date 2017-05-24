class ChangeKeywordInStock < ActiveRecord::Migration[5.1]
  def change
    rename_column :stocks, :open, :day_open
  end
end
