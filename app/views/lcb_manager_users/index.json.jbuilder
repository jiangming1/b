json.array!(@lcb_manager_users) do |lcb_manager_user|
  json.extract! lcb_manager_user, :id, :status, :login_name, :login_pwd, :mobile, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_manager_user_url(lcb_manager_user, format: :json)
end
