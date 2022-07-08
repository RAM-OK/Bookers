Rails.application.routes.draw do
  get 'lists/start'
  get 'lists/new'
  get 'lists/show'
  get 'lists/edit'
  get 'lists/destroy'
  get 'books' => 'books#index'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
