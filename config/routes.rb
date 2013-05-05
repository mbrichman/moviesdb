Moviesdb::Application.routes.draw do

  # Routes for the Vote resource:
  # CREATE
  get '/votes/new', controller: 'votes', action: 'new', as: 'new_vote'
  post '/votes', controller: 'votes', action: 'create'

  # READ
  get '/votes', controller: 'votes', action: 'index', as: 'votes'
  get '/votes/:id', controller: 'votes', action: 'show', as: 'vote'

  # UPDATE
  get '/votes/:id/edit', controller: 'votes', action: 'edit', as: 'edit_vote'
  put '/votes/:id', controller: 'votes', action: 'update'

  # DELETE
  delete '/votes/:id', controller: 'votes', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get '/actors/new', controller: 'actors', action: 'new', as: 'new_actor'
  post '/actors', controller: 'actors', action: 'create'

  # READ
  get '/actors', controller: 'actors', action: 'index', as: 'actors'
  get '/actors/:id', controller: 'actors', action: 'show', as: 'actor'

  # UPDATE
  get '/actors/:id/edit', controller: 'actors', action: 'edit', as: 'edit_actor'
  put '/actors/:id', controller: 'actors', action: 'update'

  # DELETE
  delete '/actors/:id', controller: 'actors', action: 'destroy'
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get '/roles/new', controller: 'roles', action: 'new', as: 'new_role'
  post '/roles', controller: 'roles', action: 'create'

  # READ
  get '/roles', controller: 'roles', action: 'index', as: 'roles'
  get '/roles/:id', controller: 'roles', action: 'show', as: 'role'

  # UPDATE
  get '/roles/:id/edit', controller: 'roles', action: 'edit', as: 'edit_role'
  put '/roles/:id', controller: 'roles', action: 'update'

  # DELETE
  delete '/roles/:id', controller: 'roles', action: 'destroy'
  #------------------------------

#Movie Routes
#Create
get '/movies/new', controller: 'Movies', action: 'new', as: 'new_movie'
post '/movies', controller: 'Movies', action: 'create', as: 'movies'

#Read
get '/movies', controller: 'Movies', action: 'index', as: 'movies'
get '/movies/:id', controller: 'Movies', action: 'show', as: 'movie'

#Update
get '/movies/:id/edit', controller: 'Movies', action: 'edit', as: 'edit_movie'
put '/movies/:id', controller: 'Movies', action: 'update', as: 'movie'

#Delete
delete '/movies/:id', controller: 'Movies', action: 'destroy', as: 'movie'



#------------------------------
#Director Routes
#Create
  get '/directors/new', controller: 'Directors', action: 'new', as: 'new_director'
  post '/directors', controller: 'Directors', action: 'create', as: 'directors'

#Read
  get '/directors', controller: 'Directors', action: 'index', as: 'directors'
  get '/directors/:id', controller: 'Directors', action: 'show', as: 'director'

#Update
  get '/directors/:id/edit', controller: 'Directors', action: 'edit', as: 'edit_director'
  put '/directors/:id', controller: 'Directors', action: 'update', as: 'director'

#Delete
  delete '/directors/:id', controller: 'Directors', action: 'destroy', as: 'director'
end
