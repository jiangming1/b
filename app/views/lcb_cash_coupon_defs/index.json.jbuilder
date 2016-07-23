json.array!(@lcb_cash_coupon_defs) do |lcb_cash_coupon_def|
  json.extract! lcb_cash_coupon_def, :id, :name, :amount, :summary, :valid_day, :used_quantity, :total_quantity, :begin_time, :end_time, :conditions, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_cash_coupon_def_url(lcb_cash_coupon_def, format: :json)
end
