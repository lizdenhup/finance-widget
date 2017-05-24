class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.references :user, foreign_key: true
      t.string :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.integer :volume

      t.timestamps
    end
  end
end
