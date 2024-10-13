# frozen_string_literal: true

require_relative 'root'

func1_lambda = ->(x) { -x**2 + Math.sin(x.to_f / 2) }
func1_proc = proc { |x| -x**2 + Math.sin(x.to_f / 2) }

func2_lambda = ->(x) { x**5 + 3 * x**3 + x**2 + 1 }
func2_proc = proc { |x| x**5 + 3 * x**3 + x**2 + 1 }
eps = 0.1

x11 = Root.root(func1_lambda, eps)
x12 = Root.root(func1_proc, eps)

x21 = Root.root(func2_lambda, eps)
x22 = Root.root(func2_proc, eps)

if x11 == x12
  print "-x^2+sin(x/2)=0
  Минимальный отрицательный корень = #{x11}
  Ответ в результате вызова метода двумя способами сошелся\n\n"
end

if x21 == x22
  print "x^5+3x^3+x^2+1=0
  Минимальный отрицательный корень = #{x21}
  Ответ в результате вызова метода двумя способами сошелся\n"
end
