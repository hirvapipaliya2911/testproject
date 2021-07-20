Rails.application.routes.draw do
  devise_for :users ,controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :authors, only: %i[index new create]
    resources :blogs, only: %i[index new create]
    root 'dashboards#dashboard'
end
