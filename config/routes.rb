Rails.application.routes.draw do
  # get 'appearances/index'
  #
  # get 'appearances/show'
  #
  # get 'appearances/edit'
  #
  # get 'appearances/update'

  resources :guests
  resources :episodes
  resources :appearances
  # get 'appearanaces/index'
  #
  # get 'appearanaces/show'
  #
  # get 'appearanaces/new'
  #
  # get 'appearanaces/edit'
  #
  # get 'episodes/index'
  #
  # get 'episodes/show'
  #
  # get 'episodes/new'
  #
  # get 'episodes/edit'
  #
  # get 'episdoes/index'
  #
  # get 'episdoes/show'
  #
  # get 'episdoes/new'
  #
  # get 'episdoes/edit'
  #
  # get 'episode/index'
  #
  # get 'episode/show'
  #
  # get 'episode/new'
  #
  # get 'episode/edit'
  #
  # get 'episdoe/index'
  #
  # get 'episdoe/show'
  #
  # get 'episdoe/new'
  #
  # get 'episdoe/edit'
  #
  # get 'guests/index'
  #
  # get 'guests/show'
  #
  # get 'guests/new'
  #
  # get 'guests/edit'
  #
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :appearances
end
