# frozen_string_literal: true

# calculates an integral
Integral_enum = Enumerator.new do |y|
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
    y.yield sum, num - 99
    num += 1
  end
end
