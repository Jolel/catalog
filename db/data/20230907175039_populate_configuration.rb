# frozen_string_literal: true

class PopulateConfiguration < ActiveRecord::Migration[7.0]
  def up
    20.times do |configuration|
      Configurations::CreateService.call(payment_processor: 'pay-processor', consult_processor: 'consult-processor')
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
