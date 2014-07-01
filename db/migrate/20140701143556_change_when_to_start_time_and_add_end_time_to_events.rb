class ChangeWhenToStartTimeAndAddEndTimeToEvents < ActiveRecord::Migration
  def change
    rename_column :events, :when, :start_time
    add_column :events, :end_time, :datetime
  end
end
