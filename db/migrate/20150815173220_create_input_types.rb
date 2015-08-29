class CreateInputTypes < ActiveRecord::Migration
  def change
    create_table :input_types do |t|
      t.integer :algorithm_name_id
      t.string :input_type
      t.string :input_parameters

      t.timestamps null: false
    end
  end
end
