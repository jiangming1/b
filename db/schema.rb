# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160529065038) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apidocs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_blog_comments_on_post_id"
  end

  create_table "blog_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_access_items", force: :cascade do |t|
    t.string   "item_type"
    t.string   "action_id"
    t.string   "role_id"
    t.string   "menu_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_account_sheets", force: :cascade do |t|
    t.string   "sign"
    t.integer  "status"
    t.integer  "row_num"
    t.decimal  "balance"
    t.string   "opt_user_id"
    t.decimal  "dr"
    t.string   "certificate_id"
    t.decimal  "cr"
    t.string   "ext"
    t.string   "account_id"
    t.string   "rid"
    t.string   "remark"
    t.string   "checker_uid"
    t.string   "check_remark"
    t.datetime "check_date"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lcb_accounts", force: :cascade do |t|
    t.string   "sign"
    t.integer  "row_num"
    t.decimal  "balance"
    t.string   "opt_user_id"
    t.decimal  "dr"
    t.string   "certificate_id"
    t.string   "cr_decimal"
    t.string   "ext"
    t.string   "subject_code"
    t.string   "subject_name"
    t.string   "subject_type"
    t.string   "balance_sheet_id"
    t.string   "remark"
    t.string   "user_id"
    t.string   "account_type"
    t.string   "account_no"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "lcb_actions", force: :cascade do |t|
    t.string   "uri"
    t.string   "action_name"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "owner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lcb_cash_coupon_defs", force: :cascade do |t|
    t.string   "name"
    t.decimal  "amount"
    t.string   "summary"
    t.integer  "valid_day"
    t.integer  "used_quantity"
    t.integer  "total_quantity"
    t.string   "begin_time"
    t.string   "end_time"
    t.string   "conditions"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lcb_cash_coupons", force: :cascade do |t|
    t.string   "name"
    t.string   "user_id"
    t.decimal  "amount"
    t.string   "summary"
    t.datetime "begin_time"
    t.datetime "end_time"
    t.string   "conditions"
    t.decimal  "used_amount"
    t.string   "financing_target_bid_id"
    t.string   "def_id"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "lcb_feed_backs", force: :cascade do |t|
    t.string   "status"
    t.string   "user_id"
    t.text     "content"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_financing_target_bids", force: :cascade do |t|
    t.string   "certificate_id"
    t.boolean  "pay"
    t.string   "financing_target_id"
    t.string   "bid_user_id"
    t.decimal  "buy_amount"
    t.string   "summary"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "pay_mark"
    t.string   "type"
    t.string   "bank_card_no"
    t.string   "bank_name"
    t.decimal  "withdraw_profit"
    t.decimal  "withdraw_principal"
    t.decimal  "deduction_profit"
    t.datetime "begin_profit"
    t.decimal  "annualized_rates"
    t.string   "pay_pid"
    t.string   "pay_name"
    t.string   "bank_no"
    t.boolean  "lock_amount"
    t.datetime "pay_time"
    t.string   "pay_channel"
    t.datetime "end_profit"
    t.string   "withdraw_type"
    t.string   "channel"
    t.datetime "re_begin_profit"
    t.decimal  "cash_coupon_amount"
    t.string   "cash_coupon_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "lcb_financing_target_positions", force: :cascade do |t|
    t.string   "position"
    t.string   "financing_target_id"
    t.decimal  "sort_num"
    t.datetime "end_time"
    t.datetime "start_time"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "lcb_financing_target_tags", force: :cascade do |t|
    t.string   "tag"
    t.string   "financing_target_id"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "lcb_financing_targets", force: :cascade do |t|
    t.string   "status"
    t.string   "code"
    t.integer  "period"
    t.decimal  "annualized_rates"
    t.decimal  "collect_amount"
    t.decimal  "finish_amount"
    t.string   "limit_amount"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.string   "name"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.text     "description"
    t.string   "interest_way"
    t.decimal  "min_amount"
    t.integer  "bid_count"
    t.string   "type"
    t.string   "profit_flag"
    t.string   "pics"
    t.string   "pics_description"
    t.string   "cash_mask"
    t.string   "draft_info"
    t.boolean  "new_investor"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "lcb_image_positions", force: :cascade do |t|
    t.string   "position"
    t.datetime "begin_time"
    t.decimal  "sort_num"
    t.string   "link_url"
    t.datetime "end_time"
    t.string   "title"
    t.string   "image_url"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_klines", force: :cascade do |t|
    t.string   "type"
    t.string   "open_price"
    t.string   "height_price"
    t.string   "low_price"
    t.string   "closed_price"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "lcb_manager_users", force: :cascade do |t|
    t.integer  "status"
    t.string   "login_name"
    t.string   "login_pwd"
    t.string   "mobile"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_menus", force: :cascade do |t|
    t.boolean  "separator"
    t.string   "icon"
    t.string   "target"
    t.string   "parent_menu_id"
    t.integer  "sort_num"
    t.boolean  "quick_btn"
    t.string   "menu_name"
    t.string   "url"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lcb_pics", force: :cascade do |t|
    t.string   "conntent_type"
    t.string   "name"
    t.integer  "size"
    t.string   "path"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "crite_uid"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lcb_registries", force: :cascade do |t|
    t.boolean  "visible"
    t.string   "summary"
    t.string   "val"
    t.string   "regex"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_templates", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "type"
    t.string   "content"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_user_banks", force: :cascade do |t|
    t.string   "bank_card_no"
    t.string   "bank_code"
    t.string   "bank_name"
    t.string   "holder"
    t.string   "pid"
    t.string   "mobile"
    t.string   "lcb_user_id"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "lcb_user_package_items", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "content"
    t.string   "user_id"
    t.string   "summary"
    t.datetime "begin_time"
    t.datetime "end_time"
    t.string   "tips"
    t.boolean  "used"
    t.datetime "used_time"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lcb_user_rewards", force: :cascade do |t|
    t.string   "lcb_user_id"
    t.boolean  "give_out"
    t.string   "activity_num"
    t.string   "reward_num"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "reward_desc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "lcb_users", force: :cascade do |t|
    t.string   "login_pwd"
    t.string   "login_name"
    t.string   "mobile"
    t.string   "true_name"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "pay_pwd"
    t.string   "pid"
    t.string   "invite_qr_code"
    t.string   "invite_code"
    t.string   "invite_from"
    t.string   "channel"
    t.string   "stutus"
    t.decimal  "remain_profit"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lcb_withdraw_financing_target_bid_items", force: :cascade do |t|
    t.string   "status"
    t.decimal  "withdraw_profit"
    t.decimal  "withdraw_principal"
    t.string   "withdraw_id"
    t.string   "financing_target_bid_id"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "lcb_withdraws", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "status"
    t.string   "bank_card_no"
    t.string   "bank_name"
    t.string   "pid"
    t.decimal  "withdraw_profit"
    t.string   "user_id"
    t.decimal  "withdraw_principal"
    t.string   "summary"
    t.string   "bank_no"
    t.string   "opt_time"
    t.string   "opt_summary"
    t.string   "owner_id"
    t.string   "create_uid"
    t.string   "write_uid"
    t.string   "mark"
    t.decimal  "subtract_remain_profit"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yunweis", force: :cascade do |t|
    t.string   "jobs"
    t.text     "command"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
