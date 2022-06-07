Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/card/new' => 'billing#new_card', as: :add_payment_method`
  root 'billing#index', as: :billing 
end
