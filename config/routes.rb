Rails.application.routes.draw do
  get 'shows/top'
  resources :books
  
  get 'books/show'
  get 'homes/top'
  get 'books/:id' => 'books#show'
  get 'books/:id' => 'books#edit'
  get 'books/:id' => 'books#back'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
