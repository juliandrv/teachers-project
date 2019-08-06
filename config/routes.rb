Rails.application.routes.draw do
  
  
  get 'tutorings/index'
  get 'tutorings/show'
  get 'tutorings/new'
  get 'tutorings/edit'
  get 'tutorings/create'
  get 'tutorings/update'
  get 'tutorings/destroy'
	root "home#index"
  get 'home/index'
	
	devise_for :users, controllers: {registrations: "registrations"}

	resources :students
	resources :teachers
  resources :cities
  resources :types
  resources :photos
  resources :topics
  resources :tutorings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
