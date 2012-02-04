Liberty::Application.routes.draw do
  
  
  match "/about", :to => "pages#about", :as => "about"
  match "issues", :to => "pages#issues"
  match "/contact", :to => "contacts#new", :as => "contact"
  match "/volunteer", :to => "volunteers#new", :as => "volunteer"
  match "/blog", :to => "posts#index", :as => "blog"  
   
  resources :contacts, :only => [:new, :create]
  resources :volunteers, :only => [:new, :create]
  
  scope "/blog" do
    resources :posts, :only => [:index, :show]
  end
  
  scope "/admin" do 
    resources :posts, :only => [:edit, :update, :create, :new]
  end
  
  root :to => "pages#index"

end
