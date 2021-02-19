Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Nest v1 within api so that your route looks like: api_vi_restaurants
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [ :index, :show ]
    end
  end
end
