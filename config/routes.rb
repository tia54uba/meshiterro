Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' ,as: 'about'
    resources :post_images, only: [:new, :create, :index, :show, :destroy]
  #get 'post_image/new'
  #get 'post_image/index'
  #get 'post_image/show'
  resources :users, only:[:show, :edit]
  # 'users/show'
  #get 'users/edit'

end
