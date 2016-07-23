json.array!(@lcb_user_package_items) do |lcb_user_package_item|
  json.extract! lcb_user_package_item, :id, :name, :type, :content, :user_id, :summary, :begin_time, :end_time, :tips, :used, :used_time, :id, :owner_id, :create_uid, :write_uid, :amount
  json.url lcb_user_package_item_url(lcb_user_package_item, format: :json)
end
