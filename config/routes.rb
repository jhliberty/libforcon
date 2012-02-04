Liberty::Application.routes.draw do
  
  get "volunteers/new"
  
  
  match "/volunteer", :to => "volunteers#new", :as => "volunteer"
  resources :volunteers, :only => [:new, :create]
  
  scope "/blog" do
    resources :posts, :only => [:index, :show]
  end
  
  scope "/admin" do 
    resources :posts, :only => [:edit, :update, :create, :new]
  end
  
  match "/blog", :to => "posts#index", :as => "blog"
  
  root :to => "pages#index"

end
