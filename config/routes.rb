Railsdev::Application.routes.draw do
  resources :attachments

  resources :posts do
    collection do
      get 'add_attachment'
    end
  end
  
  

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => "registrations", :confirmations => "confirmations" }
  resources :users do
      get 'list', :on => :collection
      get 'invite', :on => :member
  end
get 'home/index' => 'home#index', :as => :home_index  
get 'home/about' => 'home#about', :as => :about
get 'home/projects' => 'home#projects', :as => :projects
get 'home/contact' => 'home#contact', :as => :contact
post 'home/make_contact' => 'home#make_contact', :as => :make_contact
get 'home/blog' => 'home#blog', :as => :blog

get 'mobile/posts' => 'mobile#posts', :as => :mobile_posts
get 'mobile/home' => 'mobile#home', :as => :mobile_root
end

