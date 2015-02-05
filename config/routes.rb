TaskMatcher::Application.routes.draw do
  root :to => "pages#main"

  resources :tasks
  resources :clients
  resources :services
  resources :machines
  resources :people
end
