class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.integer :colleges_faculties_id
      t.integer :established_year
      t.text :place
      t.decimal :total_grade
      t.decimal :cost
      t.decimal :center_point

      t.timestamps
    end
  end
end
s