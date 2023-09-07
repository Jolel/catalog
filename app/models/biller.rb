# frozen_string_literal: true

class Biller < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :actions, inclusion: Attributes::BillerConstants::ACTIONS, presence: true
  validates :industries, inclusion: Attributes::BillerConstants::INDUSTRIES, presence: true
end
