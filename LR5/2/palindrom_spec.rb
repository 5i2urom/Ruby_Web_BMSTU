# frozen_string_literal: true

require_relative 'palindrom'
require 'securerandom'

RSpec.describe Palindrom do
  it 'returns true if palindrom' do
    str_np = SecureRandom.alphanumeric(10)
    str_p = (str_np + str_np.reverse).upcase!
    expect(str_p.palindrom?).to eq(true)
    expect(str_np.palindrom?).to eq(false)
    expect('СПЕЛ_ЛЕПС'.palindrom?).to eq(true)
    expect('не_палиндром'.palindrom?).to eq(false)
  end
end
