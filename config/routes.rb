Rails.application.routes.draw do
  get 'comments/create'

  get 'users/follow/:user_id', to: 'users#follow', as: 'users_follow'

  get 'followers/create'

  get 'events/my_events'

  get 'users/followers/:user_id', to: 'users#followers', as: 'users_followers'


  resources :events, :comments


  devise_for :users

  get 'users/index'

  get 'users/create'

  get 'users/:id', to: 'users#show', as: 'user'

  get 'home/index'

  get 'home/newsfeed'

  get 'home/about'

  get 'profiles/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'home#index'

end

