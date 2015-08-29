class CreateWebscrapes < ActiveRecord::Migration
  def change
    create_table :webscrapes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
