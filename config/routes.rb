Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

<<<<<<< HEAD
  namespace :admin do
=======
  scope '/admin' do
>>>>>>> 83ebe3066a0f8a31285a4c985ec6d7940c52704b
    resources :stats, only: [:index]
  end

  root 'posts#index'
end
