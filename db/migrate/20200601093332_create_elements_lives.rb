class CreateElementsLives < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_lives do |t|

      t.timestamps
    end
  end
end
