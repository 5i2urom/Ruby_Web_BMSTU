Rails.application.routes.draw do
  root 'seq#input'
  get 'seq/input'
  get 'seq/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
