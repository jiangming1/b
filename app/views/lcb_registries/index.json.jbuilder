json.array!(@lcb_registries) do |lcb_registry|
  json.extract! lcb_registry, :id, :visible, :summary, :val, :regex, :owner_id, :create_uid, :write_uid, :id
  json.url lcb_registry_url(lcb_registry, format: :json)
end
