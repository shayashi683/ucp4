class CreateElementsEdus < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_edus do |t|
      t.integer :evaluste_edu_id
      t.integer :faculty_student_n
      t.integer :faculty_teacher_n
      t.integer :apply_n
      t.integer :admin_n
      t.integer :entry_n
      t.integer :college_delay_n
      t.integer :college_student_n

      t.timestamps
    end
  end
end
