Rails.application.routes.draw do 
 #mount_devise_token_auth_for 'User', at: 'auth'
  root to: 'application#angular'

  resources :projects do
    resources :tasks do
      resources :comments do
        resources :attached_files
      end        
    end
  end   

  
end
