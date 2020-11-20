Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :create, :new, :show, :destroy] do
    resources :doses, only: [:create, :new, :show]
  end
end
