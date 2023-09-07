# frozen_string_literal: true

class ApplicationUseCase
  def initialize(args)
    @args = args
  end

  def self.call(**args)
    new(args).execute
  end

  def execute
    raise NotImplementedError
  end
end
