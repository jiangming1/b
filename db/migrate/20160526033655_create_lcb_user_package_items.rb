class CreateLcbUserPackageItems < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_user_package_items do |t|
      t.string :name
      t.string :type
      t.string :content
      t.string :user_id
      t.string :summary
      t.datetime :begin_time
      t.datetime :end_time
      t.string :tips
      t.boolean :used
      t.datetime :used_time
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid
      t.string :amount

      t.timestamps
    end
  end
end
