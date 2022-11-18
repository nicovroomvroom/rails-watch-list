Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # En tant qu’utilisateur, je peux voir toutes mes listes de films.
  # En tant qu’utilisateur, je peux créer une liste de films.
  # En tant qu’utilisateur, je peux voir les détails d’une liste de films.
  # En tant qu’utilisateur, je peux marquer (bookmark) un film dans une liste de films.
  # En tant qu’utilisateur, je peux détruire un bookmark.

  root "lists#index"
  resources :lists, only: %i[index show new create destroy] do
    resources :bookmark, only: %i[new create destroy]
  end
end
