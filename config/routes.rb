Yamamusic::Application.routes.draw do
  devise_for :admins do
   get "/admins/login" => "devise/sessions#new"
   get "/admins/logout" => "devise/sessions#destroy" 
 end
  
  devise_for :users do
   get "/login" => "devise/sessions#new"
   get "/logout" => "devise/sessions#destroy"
  end

  namespace :admins do
    resources :dashboard, :only => :index
  end
  
  resources :dashboard, :only => :index

  root :to => 'home#index'
  
end
