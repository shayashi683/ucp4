class CreateEvaluateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_reviews do |t|

      t.timestamps
    end
  end
end
