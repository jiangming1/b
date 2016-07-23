require 'test_helper'

class LcbAccountSheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lcb_account_sheet = lcb_account_sheets(:one)
  end

  test "should get index" do
    get lcb_account_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_lcb_account_sheet_url
    assert_response :success
  end

  test "should create lcb_account_sheet" do
    assert_difference('LcbAccountSheet.count') do
      post lcb_account_sheets_url, params: { lcb_account_sheet: { account_id: @lcb_account_sheet.account_id, balance: @lcb_account_sheet.balance, certificate_id: @lcb_account_sheet.certificate_id, check_date: @lcb_account_sheet.check_date, check_remark: @lcb_account_sheet.check_remark, checker_uid: @lcb_account_sheet.checker_uid, cr: @lcb_account_sheet.cr, create_uid: @lcb_account_sheet.create_uid, dr: @lcb_account_sheet.dr, ext: @lcb_account_sheet.ext, id: @lcb_account_sheet.id, opt_user_id: @lcb_account_sheet.opt_user_id, owner_id: @lcb_account_sheet.owner_id, remark: @lcb_account_sheet.remark, rid: @lcb_account_sheet.rid, row_num: @lcb_account_sheet.row_num, sign: @lcb_account_sheet.sign, status: @lcb_account_sheet.status, write_uid: @lcb_account_sheet.write_uid } }
    end

    assert_redirected_to lcb_account_sheet_path(LcbAccountSheet.last)
  end

  test "should show lcb_account_sheet" do
    get lcb_account_sheet_url(@lcb_account_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_lcb_account_sheet_url(@lcb_account_sheet)
    assert_response :success
  end

  test "should update lcb_account_sheet" do
    patch lcb_account_sheet_url(@lcb_account_sheet), params: { lcb_account_sheet: { account_id: @lcb_account_sheet.account_id, balance: @lcb_account_sheet.balance, certificate_id: @lcb_account_sheet.certificate_id, check_date: @lcb_account_sheet.check_date, check_remark: @lcb_account_sheet.check_remark, checker_uid: @lcb_account_sheet.checker_uid, cr: @lcb_account_sheet.cr, create_uid: @lcb_account_sheet.create_uid, dr: @lcb_account_sheet.dr, ext: @lcb_account_sheet.ext, id: @lcb_account_sheet.id, opt_user_id: @lcb_account_sheet.opt_user_id, owner_id: @lcb_account_sheet.owner_id, remark: @lcb_account_sheet.remark, rid: @lcb_account_sheet.rid, row_num: @lcb_account_sheet.row_num, sign: @lcb_account_sheet.sign, status: @lcb_account_sheet.status, write_uid: @lcb_account_sheet.write_uid } }
    assert_redirected_to lcb_account_sheet_path(@lcb_account_sheet)
  end

  test "should destroy lcb_account_sheet" do
    assert_difference('LcbAccountSheet.count', -1) do
      delete lcb_account_sheet_url(@lcb_account_sheet)
    end

    assert_redirected_to lcb_account_sheets_path
  end
end
