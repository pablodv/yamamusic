Yamamusic::Application.routes.draw do
  devise_for :admins, :controllers => { :sessions => "admins/users/sessions" } do
   get "/admins/login" => "devise/sessions#new"
   get "/admins/logout" => "devise/sessions#destroy" 
 end
  
  devise_for :users, :controllers => { :sessions => "users/sessions" } do
   get "/login" => "devise/sessions#new"
   get "/logout" => "devise/sessions#destroy"
  end

  namespace :admins do
    resources :dashboard, :only => :index
    resources :tasks do
      resources :comments
    end
    resources :users
    resources :messages
  end
  
  resources :dashboard, :only => :index
  resources :tasks do
    resources :comments
  end
  resources :messages

  root :to => 'dashboard#index'
  
end
