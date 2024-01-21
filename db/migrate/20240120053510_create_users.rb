class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, force: true do |t|
      t.integer :user_id
      t.string :user_password

      t.timestamps
    end
  end
end
