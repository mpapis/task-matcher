TaskMatcher::Application.routes.draw do
  match 'weather' => 'pages#weather', :via => :get

  root :to => "pages#main"

  resources :tasks do
    resources :task_details, :except => [:index, :show]
  end
  resources :clients
  resources :services
  resources :machines
  resources :people
end
