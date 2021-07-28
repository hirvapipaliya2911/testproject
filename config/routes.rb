Rails.application.routes.draw do
  devise_for :users ,controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root 'dashboards#dashboard'
  resources :authors, only: %i[index new create destroy]
  resources :blogs, only: %i[index new create show destroy] do
    get :autocomplete_blog_title, on: :collection
    resources :comments
  end
end
