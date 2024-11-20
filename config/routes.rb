Rails.application.routes.draw do
  get 'fittings/new', to: 'fittings#new'
  post 'fittings', to: 'fittings#create'
  # root 'fittings#new'
  # get 'students/index'
  root'students#index'
  # get 'students/show'
  resources :students

end
