# frozen_string_literal: true

require_relative 'rails_helper'

RSpec.describe SeqController, type: :request do
  it 'returns all sequences and number of them' do
    post '/view?num=10&str=6+28+3+4+5+6+6+496+3+6'
    expect(assigns[:all_seqs]).to eq([[6, 28], [6, 6, 496], [6]])
    expect(assigns[:count]).to eq(3)
  end

  it 'alerts message' do
    post '/view?num=-5.5&str=6+28+3+4+5+6+6+496+3+6'
    expect(flash[:alert]).to eq('Неверный ввод. Количество чисел должно быть целым и положительным')

    post '/view?num=1000&str=6+28+3+4+5+6+6+496+3+6'
    expect(flash[:alert]).to eq('Вы ввели не 1000 чисел')

    post '/view?num=11&str=6+28+3+4+5+6+6+496+3+6+dddd'
    expect(flash[:alert]).to eq('Неверный ввод. Введите массив чисел через пробел')
  end
end
