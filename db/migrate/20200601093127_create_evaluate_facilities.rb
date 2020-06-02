class CreateEvaluateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_facilities do |t|

      t.timestamps
    end
  end
end
