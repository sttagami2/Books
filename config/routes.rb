Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/delete'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'books' => 'books#create'

end

