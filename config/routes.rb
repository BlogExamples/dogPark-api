require 'api_constraints'

Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do

    scope module: :v1, constraints: ApiConstraints.new(version:1 ) do
      resources :dog_parks
    end

    scope module: :v2, constraints: ApiConstraints.new(version: 2, default: true) do
      resources :dog_parks
    end

  end

  resources :dog_parks
end
