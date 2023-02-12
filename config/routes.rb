Rails.application.routes.draw do

  get 'homes/top'
  #get 'root' => ""
  devise_for :staffs
  resources :users
  resources :toilet_records
  resources :vital_records
  resources :meal_drug_taking_records
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
