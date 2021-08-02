Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :toys
  # get '/toys', to: 'toys#index'
  # post '/toys', to: 'toys#create'
  # patch '/toys/:id', to: 'toys#update'
  patch '/toys/:id/increase', to: 'toys#increase'
end
