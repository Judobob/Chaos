class CreateDataTableDataItemLinkings < ActiveRecord::Migration
  def change
    create_table :data_table_data_item_linkings do |t|
      t.integer :data_table_data_id
      t.integer :data_table_data_item_linking_id

      t.timestamps null: false
    end
  end
end
