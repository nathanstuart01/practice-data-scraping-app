class CreatePitchingStats < ActiveRecord::Migration[5.0]
  def change
    create_table :pitching_stats do |t|
      t.float :pitching_war
      t.string :team_pitching

      t.timestamps
    end
  end
end
