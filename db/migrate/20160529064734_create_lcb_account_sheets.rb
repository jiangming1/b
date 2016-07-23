class CreateLcbAccountSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_account_sheets do |t|
      t.string :sign
      t.integer :status
      t.integer :row_num
      t.decimal :balance
      t.string :opt_user_id
      t.decimal :dr
      t.string :certificate_id
      t.decimal :cr
      t.string :ext
      t.string :account_id
      t.string :rid
      t.string :remark
      t.string :checker_uid
      t.string :check_remark
      t.datetime :check_date
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
