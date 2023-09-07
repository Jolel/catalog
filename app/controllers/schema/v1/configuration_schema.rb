# frozen_string_literal: true

module Schema
  module V1
    ConfigurationSchema = Dry::Schema.Params do
      required(:payment_processor).filled(:string)
      required(:consult_processor).filled(:string)
    end
  end
end
