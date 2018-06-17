Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :spaceports, only: [:index, :show]
      resources :homeworlds, only: [:index, :show]
    end
  end
end
