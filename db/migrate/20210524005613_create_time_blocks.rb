class CreateTimeBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :time_blocks do |t|
      t.references :appointment, type: :uuid, null: false, foreign_key: true
      t.datetime :beginTime
      t.datetime :endTime

      t.timestamps
    end
  end
end
