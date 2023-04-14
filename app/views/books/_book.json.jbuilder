json.extract! book, :id, :title, :author, :description, :genre, :date_released, :book_in_series, :created_at, :updated_at
json.url book_url(book, format: :json)
