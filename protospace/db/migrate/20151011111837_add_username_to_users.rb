class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Username, :string
    add_column :users, :menber, :string
    add_column :users, :profile, :text
    add_column :users, :works, :string
  end
end
