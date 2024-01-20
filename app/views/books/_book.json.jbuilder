json.extract! book, :id, :book_id, :book_title, :book_image, :user_id, :comment, :author, :publication_date, :genre, :short_comment, :favorite_sentence, :created_at, :updated_at
json.url book_url(book, format: :json)
