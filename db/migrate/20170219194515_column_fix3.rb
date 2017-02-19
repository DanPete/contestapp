class ColumnFix3 < ActiveRecord::Migration[5.0]
  def change
    change_column :variants, :product_id, :bigint
  end
end
