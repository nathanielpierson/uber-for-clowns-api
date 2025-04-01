Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get "users" => "users#index"
  get "users/:id" => "users#show"
  post "users" => "users#create"
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  get "clowns" => "clowns#index"
  get "clowns/:id" => "clowns#show"
  post "/clowns" => "clowns#create"
  patch "clowns/:id" => "clowns#update"
  delete "clowns/:id" => "clowns#destroy"

  get "/bookings" => "bookings#index"
  get "bookings/:id" => "bookings#show"
  post "bookings" => "bookings#create"
  patch "bookings/:id" => "bookings#update"
  delete "bookings/:id" => "bookings#destroy"

  post "/sessions" => "sessions#create"
  # Defines the root path route ("/")
  # root "posts#index"
  # 
end
