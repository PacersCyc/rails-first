Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'page#welcome'

  get '/about' => 'page#about'
  
  # get '/issues' => 'issues#index', :as => 'issues'

  # get '/issues/new' => "issues#new"

  # get '/issues/:id' => 'issues#show', :as => 'issue'

  # get 'issues/:id/edit' => 'issues#edit', :as => 'edit_issue'

  # delete 'issues/:id' => 'issues#destroy'

  # patch 'issues/:id' => 'issues#update'

  # post 'issues' => 'issues#create'

  resources :issues

  resources :comments, only: [:create]

  # post '/issues/:issue_id/comments' => "comments#create"

  resources :users, only: [:create]

  get "signup" => "users#signup", :as => "signup"

  get "login" => "users#login", :as => "login"

  post "create_login_session" => "users#create_login_session"

  delete "logout" => "users#logout", :as => "logout"

end
