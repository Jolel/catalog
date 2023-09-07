# frozen_string_literal: true

module Configurations
  class AllService < ApplicationService
    def execute
      all_configurations
    end

    private

    def all_configurations
      ConfigurationRepository.instance.all
    end
  end
end
