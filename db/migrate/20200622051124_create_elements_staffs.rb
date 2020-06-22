class CreateElementsStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_staffs do |t|
      t.integer :evaluate_staff_id
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
