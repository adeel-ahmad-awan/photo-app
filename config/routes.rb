Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registrations' }
  get 'welcome/index'
  root 'welcome#index'

  resource :users do
    member do
      get :confirm_email
    end
  end

end
