class ColumnFix5 < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :shopify_order_id, :bigint
  end
end
