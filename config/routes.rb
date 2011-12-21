AccountAppBase::Application.routes.draw do
  
  devise_for :users

  root :to => 'pages#index'
  
  resources :subscriptions, 
    :only => [:index, :create, :update], 
    :as => :subscription
end
