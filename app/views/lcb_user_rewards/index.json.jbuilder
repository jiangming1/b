json.array!(@lcb_user_rewards) do |lcb_user_reward|
  json.extract! lcb_user_reward, :id, :lcb_user_id, :give_out, :activity_num, :reward_num, :owner_id, :create_uid, :write_uid, :id, :reward_desc
  json.url lcb_user_reward_url(lcb_user_reward, format: :json)
end
