class CreateElementsEdus < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_edus do |t|

      t.timestamps
    end
  end
end
