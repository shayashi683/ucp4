class CreateEvaluateLives < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_lives do |t|

      t.timestamps
    end
  end
end
