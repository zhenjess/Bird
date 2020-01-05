Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :orders, only: [:create, :show, :edit]
    resources :users, only: [:create]
    resources :carts, only: [:create, :edit, :show, :destroy]
    resources :shoes,  only: [:index, :show]
    resource :session, only: [:create, :destroy]
  end

  
end
