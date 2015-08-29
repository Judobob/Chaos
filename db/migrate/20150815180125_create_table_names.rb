class CreateTableNames < ActiveRecord::Migration
  def change
    create_table :table_names do |t|
      t.string :table_name

      t.timestamps null: false
    end
  end
end
