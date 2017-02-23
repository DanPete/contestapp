class ChangeOrderIdInContests < ActiveRecord::Migration[5.0]
  def change
    remove_column :contests, :order_id
    add_reference :contests, :order, index: true
  end
end
