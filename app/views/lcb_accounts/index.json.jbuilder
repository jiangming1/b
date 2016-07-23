json.array!(@lcb_accounts) do |lcb_account|
  json.extract! lcb_account, :id, :sign, :row_num, :balance, :opt_user_id, :dr, :certificate_id, :cr_decimal, :ext, :subject_code, :subject_name, :subject_type, :balance_sheet_id, :remark, :user_id, :account_type, :account_no, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_account_url(lcb_account, format: :json)
end
