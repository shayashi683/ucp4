class CreateScrapeTeacherOutcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :scrape_teacher_outcomes do |t|

      t.timestamps
    end
  end
end
