Rails.application.routes.draw do

  resources :categories
  resources :posts do
    resources :comments, only: [:create, :destroy, :update]
  end
  devise_for :users
  root "welcome#index"

  get "/admin", to: "welcome#admin"

  #	get "/articles" index
  #	post "/artciles" create 
  #	delete "/articles/:id" delete 
  #	get "/articles/:id" show 
  #	get "/articles/new" new
  #	get "/articles/:id/edit" edit
  # patch "/articles/:id" update
  # put "/artciles/:id" update

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
