class Book < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  def self.create_books(title: , author: , genre: , published_date: , status: , id:)
    Book.create(title: title, author: author, genre: genre, published_date: published_date, status: status, id: id)
  end
  def self.update_books(id: , title: , author: , genre: , published_date: , status: )
    books = Book.find_by_id(id)
    if books
      books.update(title: title, author: author, genre: genre, published_date: published_date, status: status)
    else
      puts "No books found"
    end
  end
  def self.delete_books(id:)
    Book.find_by_id(id)
    if Book
      Book.delete(id)
    else
      puts "No books found"
    end
  end
end
