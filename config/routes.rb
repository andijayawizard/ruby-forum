Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/create'
  # get 'books/edit'
  # get 'books/update'
  # get 'books/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'students#index'
  resources :books
  resources :students
end
