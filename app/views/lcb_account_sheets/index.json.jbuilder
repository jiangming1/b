json.array!(@lcb_account_sheets) do |lcb_account_sheet|
  json.extract! lcb_account_sheet, :id, :sign, :status, :row_num, :balance, :opt_user_id, :dr, :certificate_id, :cr, :ext, :account_id, :rid, :remark, :checker_uid, :check_remark, :check_date, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_account_sheet_url(lcb_account_sheet, format: :json)
end
