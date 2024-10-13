# frozen_string_literal: true

require_relative 'palindrom'

str = gets.chomp
print 'Строка '
puts str.palindrom? ? '- палиндром' : 'не палиндром'
