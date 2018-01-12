Rails.application.routes.draw do
  resources :department_positions
  resources :departments
  resources :employment_types
  resources :positions
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
