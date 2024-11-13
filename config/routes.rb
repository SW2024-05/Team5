Rails.application.routes.draw do
  get 'fittings/new', to: 'fittings#new'
  post 'fittings', to: 'fittings#create'
  root 'fittings#new'
end
