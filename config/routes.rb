Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    resources :donations, only: [:new, :create, :index]
  end
  patch 'animals/:id/mark_as_adopted', to: 'animals#mark_as_adopted', as: :mark_as_adopted

  # display an animal's donations
  # remove a donation
  # edit a donation
end
