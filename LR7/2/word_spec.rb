# frozen_string_literal: true

require_relative 'word'
require 'securerandom'

RSpec.describe Word do
  it 'выводит слово и количество гласных букв в нём' do
    expect(WordLen.superclass).to eq(Word)

    vows1 = SecureRandom.alphanumeric(50).concat('a').scan(/[aeiouyAEIOUY]/).join('')
    s1 = Word.new(vows1)
    expect(s1.vowels_num).to eq(vows1.length)

    s2 = WordLen.new(vows1)
    expect(s2.cons_num).to eq(0)

    my_word1 = Word.new('EeeeAHGiii')
    expect(my_word1.vowels_num).to eq(8)

    my_word2 = WordLen.new('RrTTTaBle')
    expect(my_word2.cons_num).to eq(7)
  end
end
