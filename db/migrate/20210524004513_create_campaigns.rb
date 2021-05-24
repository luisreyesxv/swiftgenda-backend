class CreateCampaigns < ActiveRecord::Migration[6.1]
  def change
    create_table :campaigns do |t|
      t.references :owner, references: :users, null: false, foreign_key: {to_table: :users}
      t.datetime :beginTime
      t.datetime :endTime
      t.integer :length
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
