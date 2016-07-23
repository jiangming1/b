class CreateLcbFinancingTargetPositions < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_financing_target_positions do |t|
      t.string :position
      t.string :financing_target_id
      t.decimal :sort_num
      t.datetime :end_time
      t.datetime :start_time
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
