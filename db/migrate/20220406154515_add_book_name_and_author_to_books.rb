class AddBookNameAndAuthorToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :book_name, :string
    add_column :books, :author, :string
  end
end
