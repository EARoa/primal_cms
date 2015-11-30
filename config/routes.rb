Rails.application.routes.draw do

  namespace :api do
      get "videos" => 'videos#index'
      post "videos" => 'videos#create'
      put "videos/:id" => 'videos#update'
    end
    
end
