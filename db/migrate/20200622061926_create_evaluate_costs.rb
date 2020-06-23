class CreateEvaluateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_costs do |t|
      t.integer :colleges_faculties_id
      t.integer :tuition
      t.integer :future_income
      t.integer :scholarship
      t.decimal :cost_grade

      t.timestamps
    end
  end
end
