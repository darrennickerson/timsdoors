Rails.application.routes.draw do
  resources :invoices
  resources :categories
  resources :products
  
  root 'static#home'
  resources :contacts
  get 'thank-you', to: 'contacts#confirmation'
  get 'contact-us', to: 'contacts#new'

  # static routes
  get 'admin/home'
  get 'services', to: 'static#services'
  get 'about', to: 'static#about'
  get 'contact-us', to: 'contacts#new'
  devise_for :users


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
