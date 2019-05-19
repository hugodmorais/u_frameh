Rails.application.routes.draw do
  root 'courses#index' 
  
  resources :courses
  resources :students
  get 'about', to: 'pages#about'
end
