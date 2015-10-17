Rails.application.routes.draw do
  resources :tags
  resources :project_users
  resources :channels
  resources :projects do
      resources :votes
      resources :comments
  end
  devise_for :users, :controllers => {sessions: 'user/sessions', registrations: 'user/registrations', passwords: 'user/passwords' }

  post 'channel/:id/join' => 'channels#join'
  post 'project/:id/tag/:tag_id' => 'projects#tag'

  root 'channels#index'
end
