class CreateEvaluateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_costs do |t|

      t.timestamps
    end
  end
end
