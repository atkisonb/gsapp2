class CreateFundsStocks < ActiveRecord::Migration
  def change
    create_table :funds_stocks do |t|
      t.belongs_to :fund, index: true
      t.belongs_to :stock, index: true
    end
  end
end
