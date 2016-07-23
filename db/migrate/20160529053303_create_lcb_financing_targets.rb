class CreateLcbFinancingTargets < ActiveRecord::Migration[5.0]
  def change
    create_table :lcb_financing_targets do |t|
      t.string :status
      t.string :code
      t.integer :period
      t.decimal :annualized_rates
      t.decimal :collect_amount
      t.decimal :finish_amount
      t.string :limit_amount
      t.datetime :begin_date
      t.datetime :end_date
      t.string :name
      t.string :owner_id
      t.string :create_uid
      t.string :write_uid
      t.text :description
      t.string :interest_way
      t.decimal :min_amount
      t.integer :bid_count
      t.string :type
      t.string :profit_flag
      t.string :pics
      t.string :pics_description
      t.string :cash_mask
      t.string :draft_info
      t.boolean :new_investor

      t.timestamps
    end
  end
end
