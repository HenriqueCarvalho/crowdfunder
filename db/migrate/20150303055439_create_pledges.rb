class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.references :funding_level, index: true
      t.string :name
      t.email :email
      t.integer :amount

      t.timestamps null: false
    end
    add_foreign_key :pledges, :funding_levels
  end
end
