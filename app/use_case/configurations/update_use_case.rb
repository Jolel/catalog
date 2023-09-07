# frozen_string_literal: true

module Configurations
  class UpdateUseCase < ApplicationUseCase
    def execute
      schema_response = Configurations::SchemaService.call(**@args)

      return schema_response unless schema_response != 'Params are invalid'

      response = Configurations::FindService.call(id: @args[:id])

      return response unless response != 'Configuration not found'

      response.update!(**schema_response)

      response
    end
  end
end
