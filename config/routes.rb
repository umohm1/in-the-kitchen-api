Rails.application.routes.draw do
    namespace :api do
        resources :recipes, except: [:new, :edit]
    end
end
