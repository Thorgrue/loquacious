Rails.application.routes.draw do
  root to: 'pages#home'

get 'words/:day', to: 'words#show', as: 'word'
  resources :words, only: [:index] do
    collection do
      get 'calendar'
    end
  end


  get 'error', to: 'words#error'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
