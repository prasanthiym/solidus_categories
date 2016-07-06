Rails.application.routes.draw do

  mount Spree::Core::Engine, :at => '/'
      
  Spree::Core::Engine.routes.draw do
    namespace :admin do
      resources :properties do
        collection do
          get  :nested_options, :manage, :node_manage
          post :rebuild
        end
      end
    end
  end
   
end
