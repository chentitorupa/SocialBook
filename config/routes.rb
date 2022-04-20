Rails.application.routes.draw do
  devise_for :users

  # Se utilizó el comando 'rake routes' para verificar las rutas de devise

  devise_scope :user do
    get 'registrar', to: 'devise/registrations#new', as: :registrar
    get 'iniciarSesion', to: 'devise/sessions#new', as: :iniciarSesion
    delete 'cerrarSesion', to: 'devise/sessions#destroy', as: :cerrarSesion
  end

  resources :statuses
  get 'timeline', to: 'statuses#index', as: :timeline
  root to: "statuses#index"

  get '/:id', to: 'perfil#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
