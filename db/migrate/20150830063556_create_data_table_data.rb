class CreateDataTableData < ActiveRecord::Migration
  def change
    create_table :data_table_data do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
