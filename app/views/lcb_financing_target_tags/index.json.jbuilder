json.array!(@lcb_financing_target_tags) do |lcb_financing_target_tag|
  json.extract! lcb_financing_target_tag, :id, :tag, :financing_target_id, :owner_id, :create_uid, :write_uid, :id
  json.url lcb_financing_target_tag_url(lcb_financing_target_tag, format: :json)
end
