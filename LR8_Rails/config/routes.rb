Rails.application.routes.draw do
  root 'seq#input'
  get '/input' => 'seq#input'
  post 'view' => 'seq#view'
end
