Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/delete'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  post 'books' => 'books#create'

  get 'books/:id' => 'books#show'      # データベースに保存されているidを取得し、該当するidをshowに送る
  get 'books/:id/edit/' => 'books#edit'   # データベースに保存されているidを取得し、該当するidをeditに送る
  patch 'books/:id/' => 'books#update'
  delete 'books/:id' => 'books#destroy'


end

