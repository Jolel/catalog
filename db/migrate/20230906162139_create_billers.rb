class CreateBillers < ActiveRecord::Migration[7.0]
  def change
    create_table :billers do |t|
      t.string :name
      t.string :actions
      t.string :industries
      t.boolean :active, default: false, null: false

      t.timestamps
    end
  end
end
