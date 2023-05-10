Rails.application.routes.draw do
  root to: "items#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :items do
    resources :comments, :references, only: %i[create update destroy]
    resources :tasks
    resources :photos, only: %i[create destroy]
  end

  # To display all tasks (not only the tasks that belongs_to an item)
  resources :tasks, only: [:index]

  resources :artists
  resources :manufacturers

  # import data
  get 'import/new'
  post 'import', to: 'import#create'
end
