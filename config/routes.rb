Rails.application.routes.draw do
  get 'home/index'

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    
    devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations' } 

    root to: 'home#index'
  end
end
