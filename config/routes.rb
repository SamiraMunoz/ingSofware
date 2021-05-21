Rails.application.routes.draw do
  devise_for :users
  root 'welcome#dashboard'
  resources :users, :activities, :organizations
  # if user_signed_in?
  #   root 'welcome#dashboard'
  # else
  #   root to: 'devise/sessions#new'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
