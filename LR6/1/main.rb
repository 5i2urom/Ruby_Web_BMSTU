# frozen_string_literal: true

require_relative 'integral'

print "Точное значение интеграла: #{int_real = Math.log(2)**2 / 2}\n\n"
eps1 = 10**-3
eps2 = 10**-4
my_int1 = Integral.new(int_real, eps1)
val1 = my_int1.value
iter1 = my_int1.num
my_int2 = Integral.new(int_real, eps2)
val2 = my_int2.value
iter2 = my_int2.num
print "Значение интеграла при eps=#{eps1.to_f}: #{val1}\n Кол-во итераций: #{iter1}\n\n"
print "Значение интеграла при eps=#{eps2.to_f}: #{val2}\n Кол-во итераций: #{iter2}\n"
