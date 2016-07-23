class CreateLcbCashCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_cash_coupons do |t|
      t.string :name
      t.string :user_id
      t.decimal :amount
      t.string :summary
      t.datetime :begin_time
      t.datetime :end_time
      t.string :conditions
      t.decimal :used_amount
      t.string :financing_target_bid_id
      t.string :def_id
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
