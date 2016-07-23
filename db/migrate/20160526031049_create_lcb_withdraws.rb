class CreateLcbWithdraws < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_withdraws do |t|
      t.string :name
      t.string :type
      t.string :status
      t.string :bank_card_no
      t.string :bank_name
      t.string :pid
      t.decimal :withdraw_profit
      t.string :user_id
      t.decimal :withdraw_principal
      t.string :summary
      t.string :bank_no
      t.string :opt_time
      t.string :opt_summary
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid
      t.string :mark
      t.decimal :subtract_remain_profit

      t.timestamps
    end
  end
end
