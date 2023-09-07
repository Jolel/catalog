# frozen_string_literal: true

class PopulateBillers < ActiveRecord::Migration[7.0]
  def up
    50.times do
      Billers::CreateService.call(
        name: Faker::Company.name,
        actions: Attributes::BillerConstants::ACTIONS[rand(0..2)],
        industries: 'cell',
        active: rand(0..1) == 1 ? true : false )
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
