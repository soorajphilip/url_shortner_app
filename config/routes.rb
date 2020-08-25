Rails.application.routes.draw do
  root 'welcomes#index'
  resources :urls, only: [:index, :new, :create, :show]
  post 'get_url' => 'urls#create'
end
