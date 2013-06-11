SweetArticles::Application.routes.draw do

  root :to => "articles#index"  

  get '/articles/:month/:day/:year/:title' => "articles#redirect", :as => :old_url

  get '/categories/:category_name/articles/:title' => "articles#single", :as => :single_url

  get '/categories/:name/articles' => "categories#name", :as => :category_name
  
  get '/tag/:name/articles' => "tags#name", :as => :tag_name

end
