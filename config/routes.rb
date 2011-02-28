Rails.application.routes.draw do
  namespace :admin do
    resource :online_support_settings, :only => ['show', 'update', 'edit']
  end
end
