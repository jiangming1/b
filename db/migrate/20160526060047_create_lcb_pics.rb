class CreateLcbPics < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_pics do |t|
      t.string :conntent_type
      t.string :name
      t.integer :size
      t.string :path
      t.string :owner_id
      t.string :create_uid
      t.string :crite_uid

      t.timestamps
    end
  end
end
