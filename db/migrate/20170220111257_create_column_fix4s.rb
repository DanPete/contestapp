class CreateColumnFix4s < ActiveRecord::Migration[5.0]
  def change
    create_table :column_fix4s do |t|

      t.timestamps
    end
  end
end
