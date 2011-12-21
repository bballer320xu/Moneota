AccountAppBase::Application.routes.draw do
  
  devise_for :users

  root :to => 'pages#index'
  match "/subscriptions" => "subscription#index", :as => :subscriptions

end
