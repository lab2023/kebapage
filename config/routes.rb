Kebapage::Engine.routes.draw do
  resources :media, only: [:index, :create, :destroy]
  resources :static_pages, except: [:show]
  root 'static_pages#index'
end
