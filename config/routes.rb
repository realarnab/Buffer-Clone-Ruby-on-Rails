Rails.application.routes.draw do
  # Define the HTTP request and how they mapped to controller
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  # GET /about
  # get "/about", to: "about#index"
  get "about", to: "about#index", as: :about # URL /about-us that maps to the index action of the AboutController
  # about refers to the AboutController and index refers to the index method of AboutController class

  get "sign-up", to: "registrations#new"

  post "sign-up", to: "registrations#create"

  # get "/", to: "main#index"
  root to: "main#index" # this is the root route and mapped to the MainController
end
