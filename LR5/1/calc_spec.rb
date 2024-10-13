# frozen_string_literal: true

require_relative 'calc'

RSpec.describe Calc do
  let(:a) { rand(20) }
  let(:b) { rand(20) }
  let(:calc) { Calc.new(a, b) }
  it 'returns y' do
    expect(calc.y).to eq((Math.sin(a) - b) / (b.abs + Math.cos(b**2)))
  end
end
