class ChangeFacultiesToCategories < ActiveRecord::Migration[5.2]
  def change
    rename_table :faculties, :categories
  end
end
