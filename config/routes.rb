Rails.application.routes.draw do
  get "fittings/:id/edit" , to: "fittings#edit"
  patch 'fittings/:id', to: "fittings#update", as: "fitting"

  resources :students

  get 'top/show'
  post 'top/log'
  root 'fittings#edit'

end
