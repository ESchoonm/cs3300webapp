json.extract! book, :id, :title, :author, :description, :genre, :string, :date_released, :book_in_series, :integer, :created_at, :updated_at
json.url book_url(book, format: :json)
