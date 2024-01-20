class Book < ApplicationRecord
    mount_uploader :book_image, PictureUploader
end
