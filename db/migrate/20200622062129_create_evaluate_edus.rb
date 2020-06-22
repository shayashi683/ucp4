class CreateEvaluateEdus < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_edus do |t|
      t.decimal :curriculum_points
      t.decimal :relationwc
      t.decimal :raitio_st
      t.decimal :competition_rate
      t.decimal :raitio_adm
      t.decimal :susp_drop
      t.decimal :income
      t.decimal :qualification
      t.decimal :study_budget
      t.decimal :activity
      t.decimal :education_grade

      t.timestamps
    end
  end
end
