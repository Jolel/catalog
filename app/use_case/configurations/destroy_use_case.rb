# frozen_string_literal: true

module Configurations
  class DestroyUseCase < ApplicationUseCase
    def execute
      response = Configurations::FindService.call(**@args)

      return response unless response != 'Configuration not found'

      response.destroy
    end
  end
end
