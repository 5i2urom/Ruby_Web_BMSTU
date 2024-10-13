# frozen_string_literal: true

# this class is calculating a function y
class Calc
  attr_reader :y

  def initialize(a, b)
    @y = (Math.sin(a) - b) / (b.abs + Math.cos(b**2))
  end
end
