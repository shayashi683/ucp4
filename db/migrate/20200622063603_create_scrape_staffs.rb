class CreateScrapeStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_staffs do |t|
      t.integer :evaluate_staff_id
      t.decimal :scrape_repu_teacher

      t.timestamps
    end
  end
end
