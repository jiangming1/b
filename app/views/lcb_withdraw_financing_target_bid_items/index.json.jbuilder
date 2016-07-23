json.array!(@lcb_withdraw_financing_target_bid_items) do |lcb_withdraw_financing_target_bid_item|
  json.extract! lcb_withdraw_financing_target_bid_item, :id, :status, :withdraw_profit, :withdraw_principal, :withdraw_id, :financing_target_bid_id, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_withdraw_financing_target_bid_item_url(lcb_withdraw_financing_target_bid_item, format: :json)
end
