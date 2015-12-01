json.array!(@fund_stocks) do |fund_stock|
  json.extract! fund_stock, :id, :fund_id, :stock_id
  json.url fund_stock_url(fund_stock, format: :json)
end
