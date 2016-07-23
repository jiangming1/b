json.array!(@apidocs) do |apidoc|
  json.extract! apidoc, :id, :name, :content
  json.url apidoc_url(apidoc, format: :json)
end
