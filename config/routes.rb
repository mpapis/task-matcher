TaskMatcher::Application.routes.draw do
  root :to => "pages#main"

  resources :tasks do
    resources :task_details
  end
  resources :clients
  resources :services
  resources :machines
  resources :people
end
