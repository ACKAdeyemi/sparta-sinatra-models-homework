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

    @rooms = Room.all

    erb :'rooms/index'
  end

  # NEW
  get '/new'  do
    @room = Room.new

    erb :'rooms/new'
  end

  # SHOW
  get '/:id' do
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    @room = Room.find id

    erb :'rooms/show'
  end

  # CREATE
  post '/' do
    room = Room.new

    room.room_number = params[:room_number]
    room.floor_number = params[:floor_number]
    room.occupied = params[:occupied]
    room.occupant_name = params[:occupant_name]
    room.last_cleaned = params[:last_cleaned]

    room.save

    redirect '/'
  end

  # EDIT
  get '/:id/edit'  do
    id = params[:id].to_i

    @room = Room.find id

    erb :'rooms/edit'
  end

  # UPDATE
  put '/:id'  do
    id = params[:id].to_i

    room = Room.find id # find correct room in database using find method

    room.room_number = params[:room_number]
    room.floor_number = params[:floor_number]
    room.occupied = params[:occupied]
    room.occupant_name = params[:occupant_name]
    room.last_cleaned = params[:last_cleaned]

    room.save # on save, will update due to conditonal placed in save method in Room model

    redirect '/'
  end

  # DESTROY
  delete '/:id'  do
    id = params[:id].to_i

    Room.destroy id

    redirect '/'
  end
end
