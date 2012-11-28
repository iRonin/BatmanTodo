BatmanTodo::Application.routes.draw do
  root to: 'application#index'

  resources :todos do
    member do
      put 'complete'
    end
  end
  
  match '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  match '/sessions/current', :to => 'sessions#current'
end
