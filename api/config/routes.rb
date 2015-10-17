Rails.application.routes.draw do
  resources :votes
  resources :project_users
  resources :project_tags
  resources :channels
  resources :projects
  devise_for :users, :controllers => {sessions: 'user/sessions', registrations: 'user/registrations', passwords: 'user/passwords' }
end
