class CreateLcbFeedBacks < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_feed_backs do |t|
      t.string :status
      t.string :user_id
      t.text :content
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
