Rails.application.routes.draw do
  resources :cars do
  	resources :bookings
  end

  root 'cars#index'
end
