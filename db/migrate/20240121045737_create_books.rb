class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_image
      t.integer :user_id
      t.integer :rate
      t.text :comment
      t.string :author
      t.date :publication_date
      t.string :genre
      t.text :short_comment
      t.text :favorite_sentence

      t.timestamps
    end
  end
end
