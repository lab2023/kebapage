Kebapage::Engine.routes.draw do
  resources :static_pages
  root 'static_pages#index'
end
