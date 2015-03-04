class CreateFundingLevels < ActiveRecord::Migration
  def change
    create_table :funding_levels do |t|
      t.references :project, index: true
      t.string :reward_name, null: false
      t.integer :amount, default: 0

      t.timestamps null: false
    end
    add_foreign_key :funding_levels, :projects
  end
end
