json.array!(@lcb_image_positions) do |lcb_image_position|
  json.extract! lcb_image_position, :id, :position, :begin_time, :sort_num, :link_url, :end_time, :title, :image_url, :owner_id, :create_uid, :write_uid, :id
  json.url lcb_image_position_url(lcb_image_position, format: :json)
end
