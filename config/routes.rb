Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  devise_for :users
  get 'users/profile'
  
  root to: 'home#show'

  resources :lists do
    resources :tasks
  end
end
