class CreateElementsStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_staffs do |t|
      t.references :colleges_faculty, foreign_key: true
      t.integer :teacher_expense
      t.integer :staff_expense
      t.integer :college_teacher_n
      t.integer :college_staff_n
      t.integer :faculty_foreign_teacher_n
      t.integer :faculty_female_teacher_n
      t.decimal :teachers_gender

      t.timestamps
    end
  end
end
