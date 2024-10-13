# frozen_string_literal: true

require_relative 'calc'

print 'Введите a: '
a = gets.chomp.to_i
print 'Введите b: '
b = gets.chomp.to_i
calc = Calc.new(a, b)
print "Значение функции = #{calc.y}\n"
