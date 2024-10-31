class User < ApplicationRecord
  has_many :books, class_name: 'Book', foreign_key: 'user_id'
  def self.create_user(name:, email:, number:)
    User.create(name: name, email: email, number: number)
  end
  def self.update_user(id:, name:, email:, number:)
    user = User.find_by_id(id)
    if user
      user.update(name: name, email: email, number: number)
    else
      puts "No User Found"
    end
  end
  def self.delete_user(id:)
    user = User.find_by_id(id)
    if user
      book_ids = user.books.ids
      book_ids.each do |book_id|
        Book.delete(book_id)
      end
      user.destroy
    else
      puts "No User Found"
    end
  end
end

