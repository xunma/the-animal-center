Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 1. users can see all the animals
  get 'animals', to: 'animals#index'
  # 2. users can see one animal
  get 'animals/new', to: 'animals#new'
  post 'animals', to: 'animals#create'
  get 'animals/:id', to: 'animals#show'
  # 3. users can create a new animal
  # 4. users can update an animal
  # 5. users can delete an animal
end
