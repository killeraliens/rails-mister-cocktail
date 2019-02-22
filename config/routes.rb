Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create, :update] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

#A user can see the list of cocktails
#A user can see the details of a given cocktail, with the dose needed for each ingredient
#A user can create a new cocktail

# A user can add a new dose (ingredient/description pair) to an existing cocktail
# Checkout simple_form docs about f.association to easily create a select dropdown for our list of ingredients.
#A user can delete a dose that belongs to an existing cocktail. How can we make a delete link again?
