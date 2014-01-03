Kebapage::Engine.routes.draw do
  resources :static_pages, except: [:show]
  root 'static_pages#index'
end
