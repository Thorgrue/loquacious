Rails.application.routes.draw do
  root to: 'pages#home'
  resources :words, only: [:index, :show] do
    collection do
      get 'calendar'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
