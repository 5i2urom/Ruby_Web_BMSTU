# frozen_string_literal: true

# выявляет, является ли слово палиндромом
module Palindrom
  def palindrom?
    each_char do |ch|
      delete!(ch) if ch.match?(/[[:upper:]]/) == false
    end
    return false if self == ''

    self == reverse
  end
end

class String
  include Palindrom
end
