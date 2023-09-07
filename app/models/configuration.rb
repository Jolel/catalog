# frozen_string_literal: true

class Configuration < ApplicationRecord
  validates :payment_processor, presence: true
  validates :consult_processor, presence: true

  belongs_to :biller
end
