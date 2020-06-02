class CreateScrapeStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_staffs do |t|

      t.timestamps
    end
  end
end
