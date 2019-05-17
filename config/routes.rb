Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :ingredients

  root to: 'cocktails#index'
end
