class AddWarToBattingStats < ActiveRecord::Migration[5.0]
  def change
    add_column :batting_stats, :war, :float
  end
end
