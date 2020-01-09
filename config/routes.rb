Rails.application.routes.draw do
  get 'signup', to: 'users#new'
  resources :users, expect:[:new]  
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
