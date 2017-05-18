class AddTeamBattingToBattingstat < ActiveRecord::Migration[5.0]
  def change
    add_column :batting_stats, :team_batting, :string
  end
end
