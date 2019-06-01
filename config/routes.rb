Rails.application.routes.draw do
  root 'courses#index' 
  
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'

  resources :courses
  resources :students
  get 'about', to: 'pages#about'

  post 'course_enroll', to:'student_courses#create'
end
