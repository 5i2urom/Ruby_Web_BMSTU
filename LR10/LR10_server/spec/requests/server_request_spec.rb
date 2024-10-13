# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerController, type: :controller do
  let(:num_params) { 3 }
  let(:str_params) { '5 6 5' }
  describe 'check response format' do
    it 'should be xml' do
      get 'result', params: { num: num_params, str: str_params, format: 'xml' }
      expect(response.content_type).to eq('application/xml; charset=utf-8')
    end
  end
end