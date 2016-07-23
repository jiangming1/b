class CreateLcbAccessItems < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_access_items do |t|
      t.string :item_type
      t.string :action_id
      t.string :role_id
      t.string :menu_id
      t.string :create_uid
      t.string :write_uid
      t.string :owner_id

      t.timestamps
    end
  end
end
