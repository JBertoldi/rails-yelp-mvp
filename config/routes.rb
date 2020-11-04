Rails.application.routes.draw do
  # root to: 'restaurants'
  root to: 'restaurants#index'
  resources :restaurants do
    # collection do
    #   get :top
    # end
    resources :reviews, only: [:new, :create]
  end

end
