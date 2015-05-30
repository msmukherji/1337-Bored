Rails.application.routes.draw do
  devise_for :users

  root 'application#home'

  resource :profile, only: [:edit, :update] do
    resources :tokens, only: [:create, :destroy]
  end

  scope :api do
    namespace :v1 do
      post 'users/new'              => 'users#create'

      get 'profile/:user_id'        => 'profiles#show'
      post 'profile/:user_id/edit'  => 'profiles#update'

# <<<<<<< HEAD
#       get 'leaderboard'             => 'games#show'
#       post 'leaderboard'            => 'games#add'
#       post 'leaderboard/:sort'      => 'games#sort'
# =======
      get 'leaderboard'                   => 'games#show'
      post 'leaderboard'                  => 'games#add'
      get 'leaderboard/:sort'             => 'games#sort'
      post 'leaderboard/gametype'         => 'games#filter_type'
      post 'leaderboard/players'          => 'games#filter_players'
# >>>>>>> 0d6bb4fe7ed64b2255a0d102c1563c42e083a8c7
    end
  end

end