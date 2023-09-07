# frozen_string_literal: true

module Billers
  class CreateService < ApplicationService
    def execute
      create_biller
    end

    private

    def create_biller
      BillerRepository.instance.create!(**@args)
    rescue ActiveRecord::RecordInvalid
      'Biller is invalid'
    end
  end
end
