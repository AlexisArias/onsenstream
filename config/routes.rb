
Rails.application.routes.draw do
  devise_for :users
  resources :movies
  
  get "up" => "rails/health#show", as: :rails_health_check
root to: "movies#index"

end
