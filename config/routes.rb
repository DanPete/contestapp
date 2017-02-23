Rails.application.routes.draw do
  resources :column_fix4s
  resources :orders do
    collection do
      get 'import'
    end
  end
  resources :variants

  resources :products do
    collection do
      get 'import'
    end
    resources :variants
  end

  resources :accounts do
    member do
      get 'test_connection'
    end
  end

  resources :contests
  resources :dashboard
  get 'dashboard/index'
  post "create_contest" => 'dashboard#create_contest'

  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
