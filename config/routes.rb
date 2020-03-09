Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'         # データベースに保存されているidを取得し、該当するidをshowに送る
  get 'books/:id/edit/' => 'books#edit'   # データベースに保存されているidを取得し、該当するidをeditに送る
  patch 'books/:id/' => 'books#update'
  delete 'books/:id' => 'books#destroy'
  root to: 'books#new'                    # ルーティング設定  最初のページ（今回はlocalhost:3000）をnewに設定


end

