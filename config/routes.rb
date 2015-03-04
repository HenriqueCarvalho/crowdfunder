Rails.application.routes.draw do
  resources :projects do
    resources :funding_levels, only: [:show, :edit, :update, :destroy]
  end

  resources :projects do
    resources :pledges, only: [:show, :edit, :update, :destroy]
  end

  root 'projects#index'
end
