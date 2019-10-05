Rails.application.routes.draw do
#==========================
#  get 'favorites/create'
#  get 'favorites/destroy'
#========================== 
  
#============ネスト　入れ子？==========
  resources :subjects do
    resource :favorites, only: [:create, :destroy]
  end
#====================================
  
  
  get 'subjects/top'
  get 'home/top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  resources :subjects
  resources :users

  get "subjects/show" =>"subjects#show"
  
end