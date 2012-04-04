class AddUsernameToUserSession < ActiveRecord::Migration
  def change
    add_column :user_sessions, :username, :string
  end
end
