# frozen_string_literal: true

require_relative 'myfile'
require 'securerandom'

File.open('f.txt', 'w+') do |f|
  Random.new.rand(10...20).times do
    f.write(SecureRandom.alphanumeric(Random.new.rand(10...20)), "\n")
  end
  f.rewind
  File.open('g.txt', 'w') do |g|
    MyFile.reverse(f, g)
  end
end
