# frozen_string_literal: true

# calculates an integral
class Integral
  attr_reader :value, :num

  # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
  # This method smells of :reek:UncommunicativeVariableName
  def initialize(int_real, eps)
    func = ->(x) { Math.log(x) / x }
    a = 1
    b = 2
    num = 100
    loop do
      step = (b - a).to_f / num
      sum = 0
      x = a
      (num - 1).times do
        sum += (func.call(x) * step)
        x += step
      end
      if int_real - sum < eps
        @value = sum
        @num = num - 99
        break
      end
      num += 1
    end
  end
  # rubocop:enable Metrics/AbcSize, Metrics/MethodLength
end
