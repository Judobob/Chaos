class CreateAlgorithmNames < ActiveRecord::Migration
  def change
    create_table :algorithm_names do |t|
      t.string :algorithm_name

      t.timestamps null: false
    end
  end
end
