# frozen_string_literal: true

module Billers
  class SchemaService < ApplicationService
    def execute
      validate_biller_schema
    end

    private

    def validate_biller_schema
      response = Schema::V1::BillerSchema.call(@args)

      return response.to_h unless response.failure?

      'Params are invalid'
    end
  end
end
