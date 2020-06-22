class CreateScrapeTeacherOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_teacher_outcomes do |t|
      t.integer :evaluate_staff_id
      t.decimal :scrape_outcome_teacher

      t.timestamps
    end
  end
end
