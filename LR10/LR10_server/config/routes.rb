# frozen_string_literal: true

Rails.application.routes.draw do
  root 'server#input'
  get '/input' => 'server#input'
  get '/result' => 'server#result'
end
