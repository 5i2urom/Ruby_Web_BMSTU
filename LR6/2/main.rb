# frozen_string_literal: true

require_relative 'integral_enum'

print "Точное значение интеграла: #{int_real = Math.log(2)**2 / 2}\n\n"
eps1 = 10**-3
eps2 = 10**-4

my_int1 = Integral_enum.find { |sum, _iter| int_real - sum < eps1 }
val1 = my_int1[0]
iter1 = my_int1[1]

my_int2 = Integral_enum.find { |sum, _iter| int_real - sum < eps2 }
val2 = my_int2[0]
iter2 = my_int2[1]

print "Значение интеграла при eps=#{eps1.to_f}: #{val1}\n Кол-во итераций: #{iter1}\n\n"
print "Значение интеграла при eps=#{eps2.to_f}: #{val2}\n Кол-во итераций: #{iter2}\n"
