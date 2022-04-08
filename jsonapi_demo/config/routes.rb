Rails.application.routes.draw do
  
  jsonapi_resources :users
   

  jsonapi_resources :articles
 
  jsonapi_resources :categories
end
