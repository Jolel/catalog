# frozen_string_literal: true

module Billers
  class UpdateUseCase < ApplicationUseCase
    def execute
      schema_response = Billers::SchemaService.call(**@args)

      return schema_response unless schema_response != 'Params are invalid'

      response = Billers::FindService.call(id: @args[:id])

      return response unless response != 'Biller not found'

      response.update!(**schema_response)

      response
    end
  end
end
