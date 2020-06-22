class CreateScrapeLives < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_lives do |t|
      t.string :evaluate_life_id
      t.decimal :scrape_repu_life

      t.timestamps
    end
  end
end
