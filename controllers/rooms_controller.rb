class RoomsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  # INDEX
  get '/' do

      @title = "Hotel Rooms"

      erb :'posts/index'

  end

  # NEW
  get '/new'  do

    "Insert New Room Info"

  end

  # SHOW
  get '/:id' do

    # get the ID and turn it in to an integer
    id = params[:id].to_i

    erb :'posts/show'

  end

  # CREATE
  post '/' do

    "CREATE"

  end

  # EDIT
  get '/:id/edit'  do

    "EDIT: #{params[:id]}"

  end

  # UPDATE
  put '/:id'  do

    "UPDATE: #{params[:id]}"

  end

  # DESTROY
  delete '/:id'  do

    "DELETE: #{params[:id]}"

  end
end
