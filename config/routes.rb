Rails.application.routes.draw do

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users

  # get 'user/show'

  root 'homes#top'

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
   resources :post_comments, only: [:create, :destroy]
   resource :favorites, only: [:create, :destroy]
 end

 resources :users, only: [:show, :edit, :update]

end
