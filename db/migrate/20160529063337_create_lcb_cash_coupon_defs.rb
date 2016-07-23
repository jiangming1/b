class CreateLcbCashCouponDefs < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_cash_coupon_defs do |t|
      t.string :name
      t.decimal :amount
      t.string :summary
      t.integer :valid_day
      t.integer :used_quantity
      t.integer :total_quantity
      t.string :begin_time
      t.string :end_time
      t.string :conditions
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
