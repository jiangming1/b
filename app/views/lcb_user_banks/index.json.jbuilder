json.array!(@lcb_user_banks) do |lcb_user_bank|
  json.extract! lcb_user_bank, :id, :bank_card_no, :bank_code, :bank_name, :holder, :pid, :mobile, :lcb_user_id, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_user_bank_url(lcb_user_bank, format: :json)
end
