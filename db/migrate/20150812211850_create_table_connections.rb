class CreateTableConnections < ActiveRecord::Migration
  def change
    create_table :table_connections do |t|
      t.integer :table_name_id
      t.integer :table_index_id

      t.timestamps null: false
    end
  end
end
