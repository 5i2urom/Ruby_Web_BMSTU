Rails.application.routes.draw do
  root 'seq#input'
  get '/input' => 'seq#input'
  post 'view' => 'seq#view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
