Rails.application.routes.draw do
  root to: 'lectures#index'

  namespace :api do
    namespace :v1 do
      resources :lectures, only: %i[create index]
    end
  end
end
