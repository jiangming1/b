class CreateLcbUserBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_user_banks do |t|
      t.string :bank_card_no
      t.string :bank_code
      t.string :bank_name
      t.string :holder
      t.string :pid
      t.string :mobile
      t.string :lcb_user_id
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
