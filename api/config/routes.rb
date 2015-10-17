Rails.application.routes.draw do
  resources :tags
  resources :votes
  resources :project_users
  resources :channels
  resources :projects
  devise_for :users, :controllers => {sessions: 'user/sessions', registrations: 'user/registrations', passwords: 'user/passwords' }

  post 'channel/:id/join' => 'channels#join'
  post 'project/:id/tag/:tag_id' => 'projects#tag'
end
