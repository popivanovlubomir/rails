Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'front/home#index'

  authenticate :user do
    namespace :admin do
      root to: 'dashboard#index'
      resource :admin/dashboard, :only => [:index]
    end
  end

  namespace :front do
    root to: 'home#index'
  end
end
