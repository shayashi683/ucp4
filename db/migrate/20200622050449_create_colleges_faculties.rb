class CreateCollegesFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges_faculties do |t|
      t.integer :colleges_id
      t.integer :faculties_id

      t.timestamps
    end
  end
end
