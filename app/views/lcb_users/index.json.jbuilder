json.array!(@lcb_users) do |lcb_user|
  json.extract! lcb_user, :id, :login_pwd, :login_name, :mobile, :true_name, :id, :owner_id, :create_uid, :write_uid, :pay_pwd, :pid, :invite_qr_code, :invite_code, :invite_from, :channel, :stutus, :remain_profit
  json.url lcb_user_url(lcb_user, format: :json)
end
