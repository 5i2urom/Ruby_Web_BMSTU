# frozen_string_literal: true

require_relative 'myfile'

RSpec.describe MyFile do
  it 'makes a new file with reversed strings' do
    File.open('f.txt', 'r') do |f|
      File.open('g.txt', 'r') do |g|
        f.readlines.each { |fline| expect(fline.chomp).to eq(g.readline.chomp.reverse) }
      end
    end
  end
end
