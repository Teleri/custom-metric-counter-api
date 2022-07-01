Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :judgeme_metrics, only: [:index]
    end
  end
end
