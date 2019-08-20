Rails.application.routes.draw do
  devise_for :users, defaults: {format: :json},
                    controllers: {
                      registrations: 'users/registrations',
                      sesssions: 'users/sessions'
                    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/search', to: 'search#create'
end
