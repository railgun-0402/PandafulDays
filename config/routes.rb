Rails.application.routes.draw do
  get 'user/Favorites'
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'user' do

    get 'shop/search' => 'shops#search'
    resources :shops, only:[:index, :show] do
      resource :favorites,only: [:create,:destroy]
      resources :shop_comments, only:[:create, :destroy]
    end
    get 'confirm' => 'users#confirm'
    delete '/users/:id' => 'users#hide',as: :hide
    resources :users, only:[:show, :edit, :update]
      resources :relationships, only: [:create, :destroy]
      # エラーのためコメントアウト
      # get 'follow' => 'relationships#follower'
      # get 'followers' => 'relationships#followed'
      resources :follow_relationships, only: [:create, :destroy]
    get 'recommends/thank' => 'recommends#thank'
    resources :recommends, only:[:new, :create, :index, :show, :edit, :update, :destroy]
    root :to => 'homes#top'
    get 'home/about' => 'homes#about'



  end
  namespace :admin do
    resources :genres,only: [:index,:create,:edit,:update]
    resources :stations, only: [:index,:create,:edit,:update]
    resources :shops,only: [:index,:new,:create,:show,:edit,:update]
    resources :users,only: [:index,:show,:edit,:update]
    get 'home/top' => 'homes#top'
  end
end
