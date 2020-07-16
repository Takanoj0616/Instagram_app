Rails.application.routes.draw do
  get 'inquiries/new'
  get 'inquiries/confirm'
  get 'inquiries/thanks'
  devise_for :users,
   controllers: { registrations: 'registrations' }
  root 'posts#index'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy)
    resources :comments, only: %i(create destroy)
  end
end
