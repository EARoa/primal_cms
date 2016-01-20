Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, :controllers => { :registrations => 'registrations' }
  get 'home/index', as: :video_home

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
      get "videos" => 'videos#index'
      post "videos" => 'videos#create'
      put "videos/:id" => 'videos#update'
    end

end
