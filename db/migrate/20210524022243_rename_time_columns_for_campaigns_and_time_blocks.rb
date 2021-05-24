class RenameTimeColumnsForCampaignsAndTimeBlocks < ActiveRecord::Migration[6.1]
  def change
    rename_column :campaigns, :beginTime, :begin_time
    rename_column :campaigns, :endTime, :end_time

    rename_column :time_blocks, :beginTime, :begin_time
    rename_column :time_blocks, :endTime, :end_time
  end
end
