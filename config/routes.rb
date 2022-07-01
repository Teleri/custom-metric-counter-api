Rails.application.routes.draw do
  root 'api/v1/judgeme_metrics#index'
  namespace :api do
    namespace :v1 do
      resources :judgeme_metrics, only: [:index]
    end
  end
end
