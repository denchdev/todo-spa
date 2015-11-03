Rails.application.routes.draw do
  
  root to: 'application#angular'

  resources :projects do
    resources :tasks
  end   

  
end
