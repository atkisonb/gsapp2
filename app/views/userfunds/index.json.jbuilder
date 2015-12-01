json.array!(@userfunds) do |userfund|
  json.extract! userfund, :id, :user_id, :fund_id
  json.url userfund_url(userfund, format: :json)
end
