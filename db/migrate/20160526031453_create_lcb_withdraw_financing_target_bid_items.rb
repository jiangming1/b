class CreateLcbWithdrawFinancingTargetBidItems < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_withdraw_financing_target_bid_items do |t|
      t.string :status
      t.decimal :withdraw_profit
      t.decimal :withdraw_principal
      t.string :withdraw_id
      t.string :financing_target_bid_id
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
