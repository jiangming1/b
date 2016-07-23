class CreateLcbManagerUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_manager_users do |t|
      t.integer :status
      t.string :login_name
      t.string :login_pwd
      t.string :mobile
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
