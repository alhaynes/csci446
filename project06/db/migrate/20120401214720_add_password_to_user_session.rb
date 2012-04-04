class AddPasswordToUserSession < ActiveRecord::Migration
  def change
    add_column :user_sessions, :password, :string
  end
end
