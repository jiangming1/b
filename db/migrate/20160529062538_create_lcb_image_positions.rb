class CreateLcbImagePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_image_positions do |t|
      t.string :position
      t.datetime :begin_time
      t.decimal :sort_num
      t.string :link_url
      t.datetime :end_time
      t.string :title
      t.string :image_url
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
