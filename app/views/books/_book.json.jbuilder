json.extract! book, :id, :title, :author, :genre, :published_date, :status, :created_at, :updated_at
json.url book_url(book, format: :json)
