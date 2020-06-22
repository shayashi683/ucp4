class CreateScrapeReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_reviews do |t|
      t.integer :evaluate_review_id
      t.decimal :scrape_repu_review

      t.timestamps
    end
  end
end
