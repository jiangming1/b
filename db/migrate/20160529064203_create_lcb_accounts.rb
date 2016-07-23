class CreateLcbAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_accounts do |t|
      t.string :sign
      t.integer :row_num
      t.decimal :balance
      t.string :opt_user_id
      t.decimal :dr
      t.string :certificate_id
      t.string :cr_decimal
      t.string :ext
      t.string :subject_code
      t.string :subject_name
      t.string :subject_type
      t.string :balance_sheet_id
      t.string :remark
      t.string :user_id
      t.string :account_type
      t.string :account_no
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
