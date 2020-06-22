class CreateScrapeFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_facilities do |t|
      t.integer :evaluate_facility_id
      t.decimal :scrape_repu_facility

      t.timestamps
    end
  end
end
