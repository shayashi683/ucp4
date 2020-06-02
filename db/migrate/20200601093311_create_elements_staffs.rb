class CreateElementsStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_staffs do |t|

      t.timestamps
    end
  end
end
