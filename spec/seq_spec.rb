# frozen_string_literal: true

require_relative 'rails_helper'

RSpec.describe SeqController, type: :controller do
  it 'returns all sequences and number of them' do
    my_seq1 = [2, 3, 4, 6, 6, 6, 496, 5, 28, 28, 496, 3, 496]
    expect(SeqController.perfect(my_seq1)).to eq([[[6, 6, 6, 496], [28, 28, 496], [496]], 3])

    my_seq2 = [1, 1, 1, 5, 496]
    expect(SeqController.perfect(my_seq2)).to eq([[[496]], 1])
  end

  describe 'GET input' do
    it 'has a 200 status code' do
      get :input
      expect(response.status).to eq(200)
    end
  end
end

RSpec.describe SeqController, type: :request do
  it 'returns all sequences and number of them' do
    get '/seq/view?num=10&str=6+28+3+4+5+6+6+496+3+6'
    expect(assigns[:all_seqs]).to eq([[6, 28], [6, 6, 496], [6]])
    expect(assigns[:count]).to eq(3)
  end

  it 'alerts message' do
    get '/seq/view?num=-5.5&str=6+28+3+4+5+6+6+496+3+6'
    expect(flash[:alert]).to eq('Неверный ввод. Количество чисел должно быть целым и положительным')

    get '/seq/view?num=1000&str=6+28+3+4+5+6+6+496+3+6'
    expect(flash[:alert]).to eq('Вы ввели не 1000 чисел')

    get '/seq/view?num=11&str=6+28+3+4+5+6+6+496+3+6+dddd'
    expect(flash[:alert]).to eq('Неверный ввод. Введите массив чисел через пробел')
  end
end
