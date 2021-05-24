class CreateAvailableDays < ActiveRecord::Migration[6.1]
  def change
    create_table :available_days do |t|
      t.datetime :date
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
