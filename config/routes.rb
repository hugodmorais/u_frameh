Rails.application.routes.draw do
  root 'courses#index' 
  
  resources :courses
  get 'about', to: 'pages#about'
end
