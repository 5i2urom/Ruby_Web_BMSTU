# frozen_string_literal: true

# calculates the max negative root
class Root
  def self.root(func, eps)
    step = 0
    loop do
      step -= 0.01
      return step if func.call(step).abs < eps
    end
  end
end
