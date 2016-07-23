json.array!(@lcb_templates) do |lcb_template|
  json.extract! lcb_template, :id, :code, :name, :type, :content, :owner_id, :create_uid, :write_uid, :id
  json.url lcb_template_url(lcb_template, format: :json)
end
