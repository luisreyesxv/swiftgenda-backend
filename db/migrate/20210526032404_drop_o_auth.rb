class DropOAuth < ActiveRecord::Migration[6.1]
  def change
      drop_table :o_auths
      
  end
end
