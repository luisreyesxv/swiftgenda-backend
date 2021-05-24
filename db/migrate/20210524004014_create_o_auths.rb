class CreateOAuths < ActiveRecord::Migration[6.1]
  def change
    create_table :o_auths do |t|
      t.references :user, null: false, foreign_key: true
      t.string :token

      t.timestamps
    end
  end
end
