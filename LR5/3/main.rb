# frozen_string_literal: true

require_relative 'mins_maxs'

print 'Введите целочисленный массив: '
arr = gets.chomp.split
arr.map!(&:to_i)
print 'Введите K: '
k = gets.chomp.to_i
arr_mm = arr.mins_maxs(k)
if arr_mm
  print "#{k} макс.элементов: "
  arr_mm[0].max(k).each { |i| print i, ' ' }
  print "\n#{k} мин.элементов: "
  arr_mm[1].min(k).each { |i| print i, ' ' }
  print "\n"
else
  puts "В массиве меньше #{k} элементов"
end
