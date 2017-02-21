class AddMoreColumnsToContest < ActiveRecord::Migration[5.0]
  def change
    add_column :contests, :product_name, :string
  end
end
