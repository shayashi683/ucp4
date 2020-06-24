class CreateEvaluateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_lives do |t|
      t.references :colleges_faculty, foreign_key: true
      t.decimal :region_diversity
      t.decimal :gender_diversity
      t.integer :clubs
      t.decimal :life_repu
      t.decimal :life_grade

      t.timestamps
    end
  end
end
