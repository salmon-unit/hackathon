class CreateUsers < ActiveRecord::Migration[7.0]
    def change
        create_table :users, force: true do |t|
            t.integer :user_id
            t.string :user_password
            t.timestamps
            t.string :introduction
            t.string :email
            t.string :profile_image
            t.string :user_name
        end
    end
end
