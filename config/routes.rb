Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 1. users can see all the animals
  get 'animals', to: 'animals#index'
  # 3. users can create a new animal
  get 'animals/new', to: 'animals#new'
  post 'animals', to: 'animals#create'
  # 2. users can see one animal
  get 'animals/:id', to: 'animals#show', as: :animal
  # 4. users can update an animal
  get 'animals/:id/edit', to: 'animals#edit'
  patch 'animals/:id', to: 'animals#update'
  # 5. users can delete an animal
  delete 'animals/:id', to: 'animals#destroy'
end
