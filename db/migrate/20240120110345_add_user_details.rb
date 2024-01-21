class AddUserDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :introduction, :string
    add_column :users, :email, :string
    add_column :users, :profile_image, :string
  end
end
