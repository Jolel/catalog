# frozen_string_literal: true

module Billers
  class CreateUseCase < ApplicationUseCase
    def execute
      schema_response = Billers::SchemaService.call(**@args)

      return schema_response unless schema_response != 'Params are invalid'

      Billers::CreateService.call(**schema_response)
    end
  end
end
