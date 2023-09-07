class AddBillerRefToConfigurations < ActiveRecord::Migration[7.0]
  def change
    add_reference :configurations, :biller, null: false, foreign_key: true
  end
end
