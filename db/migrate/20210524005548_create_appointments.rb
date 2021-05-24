class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :appointments , id: :uuid, default: 'gen_random_uuid()' do |t|
      t.references :campaign, null: false, foreign_key: true
      t.string :attendee_email
      t.string :attendee_name
      t.string :status
      t.datetime :meeting_time
      t.string :meeting_link
      t.string :phone
      t.string :note

      t.timestamps
    end
  end
end
