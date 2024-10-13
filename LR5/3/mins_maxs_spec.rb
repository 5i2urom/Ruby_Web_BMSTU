# frozen_string_literal: true

require_relative 'mins_maxs'

RSpec.describe MinsMaxs do
  it 'prints maxs&mins' do
    arr = [1, -5, 5000, 23, 7, 54, 3232, 0]
    expect(arr.mins_maxs(3)).to eq([[5000, 3232, 54], [-5, 0, 1]])
    expect(arr.mins_maxs(20)).to eq(nil)

    arr2 = Array.new(10) { rand(-200..-101) }
    r = rand(-1..8)
    expect(arr2.mins_maxs(r)).to eq([arr2.max(r), arr2.min(r)])
    expect(arr2.mins_maxs(r + 20)).to eq(nil)
  end
end
