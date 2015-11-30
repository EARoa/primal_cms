Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  namespace :api do
      get "videos" => 'videos#index'
      post "videos" => 'videos#create'
      put "videos/:id" => 'videos#update'
    end
    
end
