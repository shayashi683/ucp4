class CreateElementsLives < ActiveRecord::Migration[5.2]
  def change
    create_table :elements_lives do |t|
      t.integer :evaluate_life_id
      t.integer :the_region_student_n
      t.integer :female_student_n

      t.timestamps
    end
  end
end
