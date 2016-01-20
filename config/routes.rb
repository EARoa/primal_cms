Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => 'registrations' }
  root 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
      get "videos" => 'videos#index'
      post "videos" => 'videos#create'
      put "videos/:id" => 'videos#update'
    end

end
