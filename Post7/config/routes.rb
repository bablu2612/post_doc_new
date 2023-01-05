Rails.application.routes.draw do
  resources :cars do
    resources :car_compares
    resources :car_offers

  end

  root "cars#index"

  post "/upload_data", to: "upload_data#create"

  post "/upload_datas", to: "upload_data#index"

  delete "/upload_data/:id", to: "upload_data#destroy"

  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
