Railsdev::Application.routes.draw do
  resources :posts

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations" }
  resources :users do
      get 'list', :on => :collection
      get 'invite', :on => :member
  end
  
get 'home/about' => 'home#about', :as => :about
get 'home/projects' => 'home#projects', :as => :projects
get 'home/contact' => 'home#contact', :as => :contact
post 'home/make_contact' => 'home#make_contact', :as => :make_contact
end

