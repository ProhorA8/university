class Book < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
