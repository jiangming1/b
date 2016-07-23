json.array!(@lcb_pics) do |lcb_pic|
  json.extract! lcb_pic, :id, :conntent_type, :name, :size, :path, :owner_id, :create_uid, :crite_uid, :id
  json.url lcb_pic_url(lcb_pic, format: :json)
end
