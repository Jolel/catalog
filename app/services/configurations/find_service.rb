# frozen_string_literal: true

module Configurations
  class FindService < ApplicationService
    def execute
      find_configurations
    end

    private

    def find_configurations
      ConfigurationRepository.instance.find(@args[:id])
    rescue ActiveRecord::RecordNotFound
      'Configuration not found'
    end
  end
end
