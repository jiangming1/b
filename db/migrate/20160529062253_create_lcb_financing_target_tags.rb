class CreateLcbFinancingTargetTags < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_financing_target_tags do |t|
      t.string :tag
      t.string :financing_target_id
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
