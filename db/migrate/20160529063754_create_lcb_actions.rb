class CreateLcbActions < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_actions do |t|
      t.string :uri
      t.string :action_name
      t.string :create_uid
      t.string :write_uid
      t.string :owner_id

      t.timestamps
    end
  end
end
