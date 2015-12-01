json.array!(@trade_books) do |trade_book|
  json.extract! trade_book, :id, :stock_id, :trade_time, :price, :stock_id
  json.url trade_book_url(trade_book, format: :json)
end
