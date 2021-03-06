json.array!(@lcb_financing_target_bids) do |lcb_financing_target_bid|
  json.extract! lcb_financing_target_bid, :id, :certificate_id, :pay, :financing_target_id, :bid_user_id, :buy_amount, :summary, :owner_id, :create_uid, :write_uid, :id, :pay_mark, :type, :bank_card_no, :bank_name, :withdraw_profit, :withdraw_principal, :deduction_profit, :begin_profit, :annualized_rates, :pay_pid, :pay_name, :bank_no, :lock_amount, :pay_time, :pay_channel, :end_profit, :withdraw_type, :channel, :re_begin_profit, :cash_coupon_amount, :cash_coupon_id
  json.url lcb_financing_target_bid_url(lcb_financing_target_bid, format: :json)
end
