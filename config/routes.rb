Rails.application.routes.draw do

  resources :searches, only: [:show, :create, :destroy]
  mount Ckeditor::Engine => '/ckeditor'
  resources :jobs
  resources :contacts
  resources :categories
  # Contractor Dashboard
  get 'contractorprofile/index'
  get 'contractorprofile/show'

  # Company Dashboard
  get '/dashboard', to:'companyprofile#index'
  get 'companyprofile/show'

  # Companies List
  get '/companies', to: 'companydashboard#index'
  get '/company/jobs', to:'companydashboard#jobs'
  get '/company/hires', to:'companydashboard#hired'

  resources :contractor_aprovals
  resources :company_aprovals
  devise_for :admins

  # register users
  get '/register', to: "home#register"
  
  resources :profilecompanies, only: [:show, :edit]
  resources :requirements, only: [:create, :destroy]
  resources :responsibilities, only: [:create, :destroy]

  root 'home#index'


  # user auth

  devise_for :companies, controllers: { 
  	registrations: 'companies/registrations' 
  }

  devise_for :contractors, controllers: { 
  	registrations: 'contractors/registrations' 
  }

end
