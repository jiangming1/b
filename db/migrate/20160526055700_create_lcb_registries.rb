class CreateLcbRegistries < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_registries do |t|
      t.boolean :visible
      t.string :summary
      t.string :val
      t.string :regex
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
