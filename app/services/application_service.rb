# frozen_string_literal: true

class ApplicationService
  def initialize(args)
    @args = args
  end

  def self.call(**args)
    new.(args).execute
  end

  def execute
    raise NotImplementedError
  end
end
