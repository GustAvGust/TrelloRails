Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql" if Rails.env.development?
  post "/graphql", to: "graphql#execute"
  devise_for :users
  get "users/profile"

  root to: "home#show"

  resources :lists do
    resources :tasks
  end
end
