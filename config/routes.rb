Rails.application.routes.draw do

  get 'subjects/top'
  get 'home/top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  get "subjects/:id" =>"subjects#show"
  
end