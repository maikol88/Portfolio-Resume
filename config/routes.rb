Rails.application.routes.draw do
  root to: 'pages#home'
  get 'resume', to: 'pages#resume'
  get 'projects', to: 'pages#projects'
  get 'contact-me', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
