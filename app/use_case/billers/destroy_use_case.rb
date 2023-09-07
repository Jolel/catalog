# frozen_string_literal: true

module Billers
  class DestroyUseCase < ApplicationUseCase
    def execute
      response = Billers::FindService.call(**@args)

      return response unless response != 'Biller not found'

      response.destroy
    end
  end
end
