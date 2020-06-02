class CreateEvaluateEdus < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_edus do |t|

      t.timestamps
    end
  end
end
