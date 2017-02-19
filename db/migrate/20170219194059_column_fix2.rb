class ColumnFix2 < ActiveRecord::Migration[5.0]
  def change
    change_column :variants, :shopify_variant_id, :bigint
  end
end
