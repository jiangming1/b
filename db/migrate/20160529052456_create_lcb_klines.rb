class CreateLcbKlines < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_klines do |t|
      t.string :type
      t.string :open_price
      t.string :height_price
      t.string :low_price
      t.string :closed_price
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
