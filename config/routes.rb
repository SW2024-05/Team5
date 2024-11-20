Rails.application.routes.draw do
  # get 'fittings/new', to: 'fittings#new'
  # post 'fittings', to: 'fittings#create'
  get "fittings/:id/edit" , to: "fittings#edit"
  patch 'fittings/:id', to: "fittings#update", as: "fitting"
  # root 'fittings#new'
  # get 'students/index'
  root'students#index'
  # get 'students/show'
  resources :students

end
