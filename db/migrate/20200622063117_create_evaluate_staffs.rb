class CreateEvaluateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_staffs do |t|
      t.references :colleges_faculties, foreign_key: true 
      t.integer :repu_teacher
      t.decimal :salary_staff
      t.decimal :outcome_staff
      t.decimal :study_budget
      t.decimal :teachers_diversity
      t.decimal :teachers_gender
      t.decimal :staff_grade

      t.timestamps
    end
  end
end
