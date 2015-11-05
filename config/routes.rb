Rails.application.routes.draw do
  
  resources :comments
  root to: 'application#angular'

  resources :projects do
    resources :tasks
  end   

  
end
