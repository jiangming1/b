json.array!(@lcb_klines) do |lcb_kline|
  json.extract! lcb_kline, :id, :type, :open_price, :height_price, :low_price, :closed_price, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_kline_url(lcb_kline, format: :json)
end
