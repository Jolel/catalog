# frozen_string_literal: true

module Attributes
  module BillerConstants
    extend ActiveSupport::Concern

    ACTIONS = %w[consult pay reverse].freeze
    INDUSTRIES = %w[cell].freeze
  end
end
