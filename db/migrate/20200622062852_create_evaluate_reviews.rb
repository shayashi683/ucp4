class CreateEvaluateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_reviews do |t|
      t.references :colleges_faculty, foreign_key: true
      t.decimal :total_repu
      t.decimal :review_grade

      t.timestamps
    end
  end
end
