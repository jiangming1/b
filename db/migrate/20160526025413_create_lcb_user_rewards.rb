class CreateLcbUserRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_user_rewards do |t|
      t.string :lcb_user_id
      t.boolean :give_out
      t.string :activity_num
      t.string :reward_num
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid
      t.string :reward_desc

      t.timestamps
    end
  end
end
