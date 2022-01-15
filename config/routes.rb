Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' ,as: 'about'
     resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  #get 'post_image/new'
  #get 'post_image/index'
  #get 'post_image/show'
      resource :favorites, only: [:create, :destroy]
     resources :post_comments, only: [:create, :destroy]
     
   end

  resources :users, only:[:show, :edit, :update]
  # 'users/show'
  #get 'users/edit'

end
