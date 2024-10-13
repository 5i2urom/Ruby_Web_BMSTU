# frozen_string_literal: true

# it operates with a word ;)
class Word
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def print_len
    print "Слово: #{@word}\n"
  end

  def vowels_num
    @word.scan(/[aeiouyAEIOUY]/).count
  end
end

# it operates with a word and its length
class WordLen < Word
  attr_reader :len

  def initialize(word)
    super(word)
    @len = word.length
  end

  def print_len
    super
    print "Длина: #{len}\n"
  end

  private :vowels_num
  def cons_num
    @word.scan(/[a-zA-Z]/).count - vowels_num
  end
end
