json.array!(@suggest_books) do |suggest_book|
  json.extract! suggest_book, :id
  json.url suggest_book_url(suggest_book, format: :json)
end
