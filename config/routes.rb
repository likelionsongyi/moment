Rails.application.routes.draw do
  root 'posts#index'
  get '/boards/index' => 'boards#index'
  resources :boards
  get '/profiles/index' => 'profiles#index'
  resources :profiles
  get '/posts/explore' => 'posts#explore'
  get '/posts/intro'  => 'posts#intro'
  
  resources :posts
<<<<<<< HEAD
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks' }

=======
  
  # omniauth : for SNS(facebook) login
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks' }
  
>>>>>>> f7de8da45bfb555f1bb5cb856c853cccbc2d0c3a
end
