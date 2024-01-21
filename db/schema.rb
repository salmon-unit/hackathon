# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_01_21_045737) do
  create_table "books", force: :cascade do |t|
    t.string "book_title"
    t.string "book_image"
    t.integer "user_id"
    t.integer "rate"
    t.text "comment"
    t.string "author"
    t.date "publication_date"
    t.string "genre"
    t.text "short_comment"
    t.text "favorite_sentence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "introduction"
    t.string "email"
    t.string "profile_image"
    t.string "user_name"
  end

end
