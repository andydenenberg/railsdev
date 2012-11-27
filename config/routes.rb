Railsdev::Application.routes.draw do
  resources :posts

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
get 'home/about' => 'home#about', :as => :about
get 'home/projects' => 'home#projects', :as => :projects

end

