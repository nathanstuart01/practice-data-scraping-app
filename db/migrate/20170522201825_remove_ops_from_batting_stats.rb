class RemoveOpsFromBattingStats < ActiveRecord::Migration[5.0]
  def change
    remove_column :batting_stats, :ops, :float
  end
end
