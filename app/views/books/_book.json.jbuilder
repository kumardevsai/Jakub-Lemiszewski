json.extract! book, :id, :name, :title, :author, :version, :created_at, :updated_at
json.url book_url(book, format: :json)
