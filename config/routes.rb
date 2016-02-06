Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {registrations: "registrations", sessions: "sessions"}
  namespace :api do
    namespace :v1 do
      # put your routes here
    end
  end
end
