# initial comment
class AddUsernameToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :username, :string
  end
end
