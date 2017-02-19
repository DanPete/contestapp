class ColumnFix < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :shopify_product_id, :bigint
  end
end
