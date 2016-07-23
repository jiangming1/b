json.array!(@lcb_menus) do |lcb_menu|
  json.extract! lcb_menu, :id, :separator, :icon, :target, :parent_menu_id, :sort_num, :quick_btn, :menu_name, :url, :id, :owner_id, :create_uid, :write_uid
  json.url lcb_menu_url(lcb_menu, format: :json)
end
