class CreateScrapeLives < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_lives do |t|

      t.timestamps
    end
  end
end
