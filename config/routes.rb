
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  root to: "home#index"

  namespace :api do
    namespace :v1 do
    end
  end
end
