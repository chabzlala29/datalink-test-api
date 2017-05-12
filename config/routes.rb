Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :devices
    end
  end
end
