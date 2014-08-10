Hello::Application.routes.draw do
  
  get "pages/board"
  resources :borg_cubes

end
