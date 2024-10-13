# frozen_string_literal: true

require_relative 'root'

RSpec.describe Root do
  it 'находит максимальный отрицательный корень уравнения с заданной точностью' do
    func1_lambda = ->(x) { -x**2 + Math.sin(x.to_f / 2) }
    func1_proc = proc { |x| -x**2 + Math.sin(x.to_f / 2) }

    func2_lambda = ->(x) { x**5 + 3 * x**3 + x**2 + 1 }
    func2_proc = proc { |x| x**5 + 3 * x**3 + x**2 + 1 }
    eps = 0.1

    x11 = Root.root(func1_lambda, eps)
    x12 = Root.root(func1_proc, eps)
    real1 = 0

    x21 = Root.root(func2_lambda, eps)
    x22 = Root.root(func2_proc, eps)
    real2 = -0.76132

    expect(x11).to eq(x12)
    expect((x11 - real1).abs < eps).to eq(true)

    expect(x21).to eq(x22)
    expect((x21 - real2).abs < eps).to eq(true)
  end
end
