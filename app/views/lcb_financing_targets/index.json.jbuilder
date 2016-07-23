json.array!(@lcb_financing_targets) do |lcb_financing_target|
  json.extract! lcb_financing_target, :id, :status, :code, :period, :annualized_rates, :collect_amount, :finish_amount, :limit_amount, :begin_date, :end_date, :name, :owner_id, :create_uid, :write_uid, :id, :description, :interest_way, :min_amount, :bid_count, :type, :profit_flag, :pics, :pics_description, :cash_mask, :draft_info, :new_investor
  json.url lcb_financing_target_url(lcb_financing_target, format: :json)
end
