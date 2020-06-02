class CreateScrapeReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_reviews do |t|

      t.timestamps
    end
  end
end
