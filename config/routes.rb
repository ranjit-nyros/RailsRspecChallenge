Rails.application.routes.draw do
  resources :events do 
    member do 
      post 'deactivate_event'
      post 'add_comment'
    end     
  end
  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :users
end
