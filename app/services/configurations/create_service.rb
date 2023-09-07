# frozen_string_literal: true

module Configurations
  class CreateService < ApplicationService
    def execute
      create_configuration
    end

    private

    def create_configuration
      ConfigurationRepository.instance.create!(**@args)
    rescue ActiveRecord::RecordInvalid
      'Configuration is invalid'
    end
  end
end
