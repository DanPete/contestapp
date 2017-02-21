class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.string :name
      t.bigint :product_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_result
      t.integer :order_id

      t.timestamps
    end
    add_index :contests, :order_id
  end
end
