Rails.application.routes.draw do
#========================== 
#  get 'users/index'
#  get 'users/show'

#  get 'favorites/create'
#  get 'favorites/destroy'
#========================== 
  
#============ネスト　入れ子？==========
  resources :subjects do
    resource :favorites, only: [:create, :destroy]
  end
#====================================
  
  
  
  get 'home/top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  resources :users

  
  
end