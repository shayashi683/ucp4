class CreateEvaluateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluate_staffs do |t|

      t.timestamps
    end
  end
end
