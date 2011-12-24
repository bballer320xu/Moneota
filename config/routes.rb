Moneota::Application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "registrations"}

  root :to => 'pages#index'
  
  resources :subscriptions, 
    :only => [:index, :update], 
    :as => :subscription
end
