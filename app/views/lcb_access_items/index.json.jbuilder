json.array!(@lcb_access_items) do |lcb_access_item|
  json.extract! lcb_access_item, :id, :item_type, :action_id, :role_id, :menu_id, :id, :create_uid, :write_uid, :owner_id
  json.url lcb_access_item_url(lcb_access_item, format: :json)
end
