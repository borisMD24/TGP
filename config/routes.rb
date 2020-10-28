Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :potins
  resources :user
end

# Prefix    Verb    URI                                                                                     Controller#
#           POST   /potins(.:format)                                                                        potins#create
# new_potin GET    /potins/new(.:format)                                                                    potins#new