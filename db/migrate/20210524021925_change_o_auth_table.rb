class ChangeOAuthTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :o_auths, :token, :uid
    add_column :o_auths, :provider, :string, null: false
  end
end
