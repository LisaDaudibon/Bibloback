Rails.application.routes.draw do
  # resources :comments
  # resources :reading_goals
  resources :reading_items
  resources :reading_lists do
    get 'books', on: :member
    member do
      delete 'remove_book/:book_id', action: 'remove_book', as: 'remove_book'
    end
  end
  resources :books
  devise_for :users,
      controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  get '/member-data', to: 'members#show'
  get '/member-datas', to: 'members#index'

  root "books#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
