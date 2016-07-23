class CreateLcbMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_menus do |t|
      t.boolean :separator
      t.string :icon
      t.string :target
      t.string :parent_menu_id
      t.integer :sort_num
      t.boolean :quick_btn
      t.string :menu_name
      t.string :url
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
