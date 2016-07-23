json.array!(@lcb_feed_backs) do |lcb_feed_back|
  json.extract! lcb_feed_back, :id, :status, :user_id, :content, :owner_id, :create_uid, :write_uid, :id
  json.url lcb_feed_back_url(lcb_feed_back, format: :json)
end
