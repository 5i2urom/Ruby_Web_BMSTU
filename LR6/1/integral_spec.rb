# frozen_string_literal: true

require_relative 'integral'

RSpec.describe Integral do
  it 'возвращает значение интеграла функции с определенной точностью и количество итераций' do
    eps1 = 10**-3
    eps2 = 10**-4
    real = Math.log(2)**2 / 2

    int1 = Integral.new(real, eps1)
    val1 = int1.value
    expect((real - eps1...real).include?(val1)).to eq(true)

    int2 = Integral.new(real, eps2)
    val2 = int2.value
    expect((real - eps2...real).include?(val2)).to eq(true)
  end
end
