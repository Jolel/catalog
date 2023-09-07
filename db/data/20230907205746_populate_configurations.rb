# frozen_string_literal: true

class PopulateConfigurations < ActiveRecord::Migration[7.0]
  def up
    100.times do
      Configurations::CreateService.call(
        payment_processor: 'pay-processor',
        consult_processor: 'consult-processor',
        biller_id: rand(1..50))
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
