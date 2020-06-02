class CreateRankingTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ranking_types do |t|

      t.timestamps
    end
  end
end
