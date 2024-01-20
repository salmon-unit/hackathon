class AddUserDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :introduction, :users, :string
    add_column :email, :users, :string
    add_column :profile_image, :users, :string
  end
end
