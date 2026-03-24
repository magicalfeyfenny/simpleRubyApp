Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

#CRUD action patterns described by rails tutorial
	#index
	get "/products", to: "products#index"

	#new and create
	get "/products/new", to: "products#new"
	post "/products", to: "products#create"

	#show
	get "/products/:id", to: "products#show"

	#edit and update (put for full, patch for partial)
	get "/products/:id/edit", to: "products#edit"
	patch "/products/:id", to: "products#update"
	put "/products/:id", to: "products#update"

	#delete
	delete "/products/:id", to: "products#update"

#this creates the above set of action patterns
	resources :products

#example for a blog
	get "/blog/:title", to: "blog#show"
end
