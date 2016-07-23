json.array!(@yunweis) do |yunwei|
  json.extract! yunwei, :id, :jobs, :command
  json.url yunwei_url(yunwei, format: :json)
end
