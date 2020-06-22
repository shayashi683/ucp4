class CreateEvaluateInternationals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_internationals do |t|
      t.integer :colleges_faculties_id
      t.integer :coop_schools
      t.integer :shortstudy_programs
      t.integer :faculty_partnerschool
      t.integer :exchangestudents
      t.integer :accepted_programs
      t.decimal :the_assess
      t.decimal :international_grade

      t.timestamps
    end
  end
end
