Rails.application.routes.draw do
  resources :orders
   

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'orders#index'


 match '/add_team/' => "teams#new", :as => :teams_new,:via => [:post ,:get] 
 #match '/update_sports_list/' => "teams#update_sports_list", :as => :teams_update_sports_list,:via => [:post ,:get]   
 resources :teams do
    collection do 	
    	post :update_sports_list 	
    end
end
  #match '/get_done/' => "get_practises#index", :as => :get_practises_index,:via => [:get]  e
end