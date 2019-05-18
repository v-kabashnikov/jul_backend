Rails.application.routes.draw do
  resources :orders, only: [:index, :show]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
