class AddSymbolToStock < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :symbol, :string
  end
end
