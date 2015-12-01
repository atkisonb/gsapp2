class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :fund_name
      t.text :fund_description

      t.timestamps
    end
  end
end
