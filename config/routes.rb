Kebapage::Engine.routes.draw do
  resources :media, only: [:create, :destroy, :photos] do
    get :media, on: :collection
  end
  resources :static_pages, except: [:show]
  root 'static_pages#index'
end
