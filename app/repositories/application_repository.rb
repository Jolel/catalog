# frozen_string_literal: true

class ApplicationRepository
  include Singleton

  delegate :all, to: :@db_table
  delegate :find, to: :@db_table
  delegate :includes, to: :@db_table
  delegate :new, to: :@db_table
  delegate :where, to: :@db_table

  def initialize
    @db_table = model
  end

  private

  def model
    self.class.to_s.gsub('Repository', '').constantize
  end
end
