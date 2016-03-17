Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
# Rails.application.routes.draw do
#   devise_for :users
#   root 'tweets#index'
#   resources :tweets                     #tweets_controllerに対してのresourcesメソッド
#   resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
#   resources :comments, only: [:create]
# end














# Rails.application.routes.draw do
#   devise_for :users
#   get'/tweets'=>'tweets#index'
#   root 'tweets#index'
#   get '/tweets/new'=>'tweets#new'
#   post '/tweets'=>'tweets#create'
#   get '/users/:id'=>'users#show'
#   delete 'tweets/:id'=>'tweets#destroy'
#   get 'tweets/:id/edit'=> 'tweets#edit'
#   patch 'tweets/:id'=>'tweets#update'

#   get 'tweets/:id'=>'tweets#show'
    
  

