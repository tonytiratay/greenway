json.array!(@clientmails) do |clientmail|
  json.extract! clientmail, :mail
  json.url clientmail_url(clientmail, format: :json)
end