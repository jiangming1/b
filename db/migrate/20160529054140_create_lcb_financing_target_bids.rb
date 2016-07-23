class CreateLcbFinancingTargetBids < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_financing_target_bids do |t|
      t.string :certificate_id
      t.boolean :pay
      t.string :financing_target_id
      t.string :bid_user_id
      t.decimal :buy_amount
      t.string :summary
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid
      t.string :pay_mark
      t.string :type
      t.string :bank_card_no
      t.string :bank_name
      t.decimal :withdraw_profit
      t.decimal :withdraw_principal
      t.decimal :deduction_profit
      t.datetime :begin_profit
      t.decimal :annualized_rates
      t.string :pay_pid
      t.string :pay_name
      t.string :bank_no
      t.boolean :lock_amount
      t.datetime :pay_time
      t.string :pay_channel
      t.datetime :end_profit
      t.string :withdraw_type
      t.string :channel
      t.datetime :re_begin_profit
      t.decimal :cash_coupon_amount
      t.string :cash_coupon_id

      t.timestamps
    end
  end
end
