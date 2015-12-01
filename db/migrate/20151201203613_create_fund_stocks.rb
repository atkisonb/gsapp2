class CreateFundStocks < ActiveRecord::Migration
  def change
    create_table :fund_stocks do |t|
      t.integer :fund_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
