Rails.application.routes.draw do
  resources :interventions
  resources :goals
  resources :nursing_diagnoses
  resources :diagnosis_categories
  resources :dailycares
  resources :intakeoutputs
  resources :ivs
  resources :pains
  resources :vitals
  resources :summaries
  resources :care_plans
  resources :shift_assessments
  resources :shift_notes
  resources :educations
  resources :discharges
  resources :transfers
  resources :admittings
  resources :mars
  resources :assessments
  resources :drugs
  resources :consults
  resources :assignments
  resources :rxes
  resources :diets
  resources :labs
  resources :physical_assessments
  resources :imagings
  resources :orders
  resources :admissions
  resources :users
  resources :auth

    get 'patients', to: "users#patients"
  get 'profile', to: 'users#profile'
  get 'users/:id/records', to: 'users#records'
  get 'users/:id/medical_group', to: 'users#medical_group'
  get '/current_user', to: 'auth#current_user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
