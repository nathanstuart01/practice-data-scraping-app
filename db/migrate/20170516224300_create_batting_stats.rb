class CreateBattingStats < ActiveRecord::Migration[5.0]
  def change
    create_table :batting_stats do |t|
      t.float :ops

      t.timestamps
    end
  end
end
