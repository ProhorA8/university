class Book < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  # наличие названия книги и её автора
  validates :book_name, :author, presence: true
end
