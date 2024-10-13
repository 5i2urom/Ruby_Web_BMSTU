# frozen_string_literal: true

require_relative 'word'

my_word1 = Word.new('Elephant')
my_word1.print_len
print "Количество гласных: #{my_word1.vowels_num}\n\n"

my_word2 = WordLen.new('Refrigirator')
my_word2.print_len
print "Количество согласных: #{my_word2.cons_num}\n"
