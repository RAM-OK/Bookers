Rails.application.routes.draw do
  get 'shows/top'
  resources :books
  
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end