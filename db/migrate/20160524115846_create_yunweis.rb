class CreateYunweis < ActiveRecord::Migration[5.0]
  def change
    create_table :yunweis do |t|
      t.string :jobs
      t.text :command

      t.timestamps
    end
  end
end
