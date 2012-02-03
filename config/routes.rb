Liberty::Application.routes.draw do
  
  scope "/blog" do
    resources :posts, :only => [:index, :show]
  end
  match "/blog", :to => "posts#index", :as => "blog"
  
  root :to => "pages#index"

end
