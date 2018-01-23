Rails.application.routes.draw do
  resources :portfolios
  
  get 'angular-items', to: 'portfolios#angular'

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'


  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
