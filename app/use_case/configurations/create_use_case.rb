# frozen_string_literal: true

module Configurations
  class CreateUseCase < ApplicationUseCase
    def execute
      schema_response = Configurations::SchemaService.call(**@args)

      return schema_response unless schema_response != 'Params are invalid'

      Configurations::CreateService.call(**schema_response)
    end
  end
end
