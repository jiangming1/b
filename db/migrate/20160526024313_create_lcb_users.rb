class CreateLcbUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_users do |t|
      t.string :login_pwd
      t.string :login_name
      t.string :mobile
      t.string :true_name
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid
      t.string :pay_pwd
      t.string :pid
      t.string :invite_qr_code
      t.string :invite_code
      t.string :invite_from
      t.string :channel
      t.string :stutus
      t.decimal :remain_profit

      t.timestamps
    end
  end
end
