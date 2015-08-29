class CreateDataTableItems < ActiveRecord::Migration
  def change
    create_table :data_table_items do |t|
      t.string :name
      t.string :value

      t.timestamps null: false
    end
  end
end
