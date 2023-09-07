# frozen_string_literal: true

module Schema
  module V1
    BillerSchema = Dry::Schema.Params do
      required(:name).filled(:string)
      required(:actions).filled(:string, included_in?: Attributes::BillerConstants::ACTIONS)
      required(:industries).filled(:string, included_in?: Attributes::BillerConstants::INDUSTRIES)
      optional(:active).filled(:bool)
    end
  end
end
