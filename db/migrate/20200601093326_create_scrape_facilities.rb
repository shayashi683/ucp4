class CreateScrapeFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_facilities do |t|

      t.timestamps
    end
  end
end
