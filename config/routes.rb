Rails.application.routes.draw do

  namespace :api do

    namespace :v1 do
        resources :dog_parks
    end

  end

  resources :dog_parks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
