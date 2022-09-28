Rails.application.routes.draw do
  get 'dashboard/index'
  resources :activity_records
  resources :groups
  resources :activities
  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
