class CreateWebscrapeItems < ActiveRecord::Migration
  def change
    create_table :webscrape_items do |t|
      t.integer :name_id
      t.text :value
      t.text :parameters

      t.timestamps null: false
    end
  end
end
