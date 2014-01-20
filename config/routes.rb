Kebapage::Engine.routes.draw do
  resources :photos, only: [:create, :destroy, :photos] do
    get :photos, on: :collection
  end
  resources :static_pages, except: [:show]
  root 'static_pages#index'
end
