Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/napoleon", to: "cake#napoleon"
  get "/carrot_cake", to: "cake#carrot_cake"
  get "/carrot", to: "cake#carrot_cake"
  get "/brownie", to: "cake#brownie"
  get "/cheesecake", to: "cake#cheesecake"
  # Defines the root path route ("/")
  root "cake#welcome"
  # root "posts#index"
end
