Rails.application.routes.draw do
  get 'sessions/new'
  resources :favorites, only: [:index, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts do
    collection do
      post :confirm
      mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
    end
  end
end