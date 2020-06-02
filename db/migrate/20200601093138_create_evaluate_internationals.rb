class CreateEvaluateInternationals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_internationals do |t|

      t.timestamps
    end
  end
end
