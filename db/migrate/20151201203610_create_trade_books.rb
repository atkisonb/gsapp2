class CreateTradeBooks < ActiveRecord::Migration
  def change
    create_table :trade_books do |t|
      t.integer :stock_id
      t.datetime :trade_time
      t.decimal :price
      t.references :stock, index: true

      t.timestamps
    end
  end
end
