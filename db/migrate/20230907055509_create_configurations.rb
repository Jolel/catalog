class CreateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :configurations do |t|
      t.string :payment_processor
      t.string :consult_processor
      t.string :payment_sku, default: 'various'
      t.string :consult_sku, default: 'various'
      t.string :commission_type, default: 'percentage'

      t.timestamps
    end
  end
end
