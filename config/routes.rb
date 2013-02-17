FirstQuarterlyProject::Application.routes.draw do
  resources :members
  resources :classrooms
  resources :strengths
  resources :weaknesses
  get '/error' => 'members#error'
  post '/recommendations/new' => 'recommendations#create'
  post '/messages/new' => 'messages#create'
  post '/messages' => 'messages#destroy'
  post '/login' => 'main#connect'
  get '/logout' => 'main#logout'
  root :to => 'main#login'
end
