class CreateLcbTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_templates do |t|
      t.string :code
      t.string :name
      t.string :type
      t.string :content
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid

      t.timestamps
    end
  end
end
