# frozen_string_literal: true

require_relative 'integral_enum'

RSpec.describe Integral_enum do
  it 'возвращает значение интеграла функции с определенной точностью и количество итераций' do
    eps1 = 10**-3
    eps2 = 10**-4
    real = Math.log(2)**2 / 2

    int1 = Integral_enum.find { |sum, _iter| real - sum < eps1 }
    val1 = int1[0]
    expect((real - eps1...real).include?(val1)).to eq(true)

    int2 = Integral_enum.find { |sum, _iter| real - sum < eps2 }
    val2 = int2[0]
    expect((real - eps2...real).include?(val2)).to eq(true)
  end
end
