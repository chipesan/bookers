Rails.application.routes.draw do
  #get 'books/new'
  #get '/top' => 'homes#top'
  root 'homes#top'
  #post 'books' => 'books#create'
  #get 'books' => 'books#index'
  #get 'books/:id' => 'books#show'
  resources :books
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book_path'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
