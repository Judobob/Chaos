class CreateWebscrapeItemNames < ActiveRecord::Migration
  def change
    create_table :webscrape_item_names do |t|
      t.string :name
      t.integer :type_id

      t.timestamps null: false
    end
  end
end
