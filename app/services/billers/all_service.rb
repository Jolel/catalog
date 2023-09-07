# frozen_string_literal: true

module Billers
  class AllService < ApplicationService
    def execute
      all_billers
    end

    private

    def all_billers
      BillerRepository.instance.all
    end
  end
end
