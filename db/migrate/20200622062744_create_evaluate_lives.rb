class CreateEvaluateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_lives do |t|
      t.integer :colleges_faculties_id
      t.decimal :region_diversity
      t.decimal :gender_diversity
      t.integer :clubs
      t.decimal :life_repu
      t.decimal :life_grade

      t.timestamps
    end
  end
end
