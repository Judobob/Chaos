class CreateDatatTableData < ActiveRecord::Migration
  def change
    create_table :datat_table_data do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
