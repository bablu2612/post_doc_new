Rails.application.routes.draw do
  resources :cars do
    resources :car_compares
  end

  root "cars#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
