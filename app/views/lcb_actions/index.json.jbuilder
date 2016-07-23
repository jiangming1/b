json.array!(@lcb_actions) do |lcb_action|
  json.extract! lcb_action, :id, :uri, :action_name, :id, :create_uid, :write_uid, :owner_id
  json.url lcb_action_url(lcb_action, format: :json)
end
