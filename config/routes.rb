Rails.application.routes.draw do
  # simple match route
  get 'demo/index'
  # the above line is a short version 

  # Here is the long version
  # match "demo/index", :to "demo#index", :via => :get 
  # demo is the controller and index is the action 

  # Default Route Structure
  # :controller/:action/:id
  # this is the rails convention 
  # get ':controller(/:action(/:id))'
  # match ':controller(/:action(/:id))', :via => :get
  # parenthesis means what is inside is just optional 

  # Root Route
  # root 'demo#index'
  # local host will go to this index page instead of the ruby starter page


  get 'demo/hello'

  get 'demo/other_hello'

  get 'demo/google_search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
