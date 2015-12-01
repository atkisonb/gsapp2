class CreateUserfunds < ActiveRecord::Migration
  def change
    create_table :userfunds do |t|
      t.integer :user_id
      t.integer :fund_id

      t.timestamps
    end
  end
end
