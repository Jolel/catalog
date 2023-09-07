# frozen_string_literal: true

module Billers
  class FindService < ApplicationService
    def execute
      find_biller
    end

    private

    def find_biller
      BillerRepository.instance.includes(:configurations).find(@args[:id])
    rescue ActiveRecord::RecordNotFound
      'Biller not found'
    end
  end
end
