Rails.application.routes.draw do
  
  
  
  root to: 'application#angular'

  resources :projects do
    resources :tasks do
      resources :comments do
        resources :attached_files
      end        
    end
  end   

  
end
