class Columnfix5 < ActiveRecord::Migration[5.0]
  def change
    change_column :contests, :order_id, :bigint
    change_column :order_items, :order_id, :bigint
  end
end
