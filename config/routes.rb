Rails.application.routes.draw do
  devise_for :users

  root 'application#home'

  resource :profile, only: [:edit, :update] do
    resources :tokens, only: [:create, :destroy]
  end

  scope :api do
    namespace :v1 do
      get 'profile/:user_id'        => 'profiles#show'
      get 'profile/:user_id/edit'   => 'profiles#edit'
      post 'profile/:user_id/edit'  => 'profiles#update'

      get 'leaderboard'             => 'games#show'
      post 'leaderboard'            => 'games#add'
      post 'leaderboard/:sort'      => 'games#sort'
    end
  end

end