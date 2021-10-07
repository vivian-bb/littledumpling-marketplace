Rails.application.routes.draw do
  resources :listings
  get 'about/introduction'
  get 'contact/page'
  get 'item/page'
  get "/success", to: 'payments#success', as: "payment_success"
  post '/payments/webhook', to: "payments#webhook", as: "webhook"
  root 'home#page'
  resources :menus
  devise_for :users
  resources :bookings
  post 'bookings/new', to: 'bookings#new', as: "booking_new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
