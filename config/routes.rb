Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:destroy]
end
