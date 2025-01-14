Rails.application.routes.draw do
  get "fittings/:id/edit" , to: "fittings#edit"
  patch 'fittings/:id', to: "fittings#update", as: "fitting"

  resources :students do
    collection do
      get "new/upload_csv", to: "students#upload_csv" , as: "upload_csv"
      post "import_csv", to: "students#import" , as: "import_csv"
      get "search" , to: "students#search" ,as: "search"
      post "find_student" , to: "students#find" , as: "find"
    end
  end
  resources :top do
    collection do
      get "login",to: "top#login" ,as:"login"
      post "find",to: "top#find" ,as:"find"
    end
  end
  root 'students#search'

end