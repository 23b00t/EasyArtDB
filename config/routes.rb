Rails.application.routes.draw do
  root to: "items#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :items do
    resources :comments, :references, :provenances, only: %i[create edit update destroy]
    resources :tasks
    resources :photos, only: %i[create destroy]
  end

  # To display all tasks (not only the tasks that belongs_to an item)
  resources :tasks, only: [:index]

  resources :artists
  resources :manufacturers

  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: :create
    member do
      delete 'bookmarks', to: 'bookmarks#destroy'
    end
  end

  # import data
  get 'import/new'
  post 'import', to: 'import#create'

  # backup db
  resources :backups, only: [:new] do
    get 'load', on: :collection
    post 'save', on: :collection
    post 'restore', on: :collection
  end
end
