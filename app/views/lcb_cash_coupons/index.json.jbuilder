json.array!(@lcb_cash_coupons) do |lcb_cash_coupon|
  json.extract! lcb_cash_coupon, :id, :name, :user_id, :amount, :summary, :begin_time, :end_time, :conditions, :used_amount, :financing_target_bid_id, :def_id, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_cash_coupon_url(lcb_cash_coupon, format: :json)
end
