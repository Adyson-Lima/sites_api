Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :sites
    end  
  end
  
end
