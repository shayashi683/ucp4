class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.references :colleges_faculty, foreign_key: true
      t.decimal :z_education_grade
      t.decimal :z_cost_grade
      t.decimal :z_staff_grade
      t.decimal :z_facility_grade
      t.decimal :z_international_grade
      t.string :z_life_grade

      t.timestamps
    end
  end
end
