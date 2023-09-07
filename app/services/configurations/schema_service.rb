# frozen_string_literal: true

module Configurations
  class SchemaService < ApplicationService
    def execute
      validate_configuration_schema
    end

    private

    def validate_configuration_schema
      response = Schema::V1::ConfigurationSchema.call(@args)

      return response.to_h unless response.failure?

      'Params are invalid'
    end
  end
end
