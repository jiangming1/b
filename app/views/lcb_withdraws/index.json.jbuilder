json.array!(@lcb_withdraws) do |lcb_withdraw|
  json.extract! lcb_withdraw, :id, :name, :type, :status, :bank_card_no, :bank_name, :pid, :withdraw_profit, :user_id, :withdraw_principal, :summary, :bank_no, :opt_time, :opt_summary, :id, :owner_id, :create_uid, :write_uid, :mark, :subtract_remain_profit
  json.url lcb_withdraw_url(lcb_withdraw, format: :json)
end
