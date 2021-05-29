Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch 'animals/:id/mark_as_adopted', to: 'animals#mark_as_adopted', as: :mark_as_adopted
  resources :animals do
    resources :donations, only: [:new, :create, :index]
  end
  resources :donations, only: [:destroy, :edit, :update]
end
