json.array!(@lcb_financing_target_positions) do |lcb_financing_target_position|
  json.extract! lcb_financing_target_position, :id, :position, :financing_target_id, :sort_num, :end_time, :start_time, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_financing_target_position_url(lcb_financing_target_position, format: :json)
end
