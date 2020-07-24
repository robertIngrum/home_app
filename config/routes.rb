Rails.application.routes.draw do
  devise_for :users

  resource  :home
  resources :reminders

  root to: "home#index"
end
