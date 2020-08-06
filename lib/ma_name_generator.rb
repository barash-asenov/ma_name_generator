require "ma_name_generator/version"
require "ma_name_generator/base"

module MaNameGenerator
  def self.generate
    Base.generate
  end

  def self.generate_unique(excluding:)
    Base.generate_unique(excluding: excluding)
  end

  class NotArray < StandardError; end
  # Your code goes here...
  #
end
