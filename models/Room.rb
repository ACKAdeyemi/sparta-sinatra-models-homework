class Room

  attr_accessor :id, :room_number, :floor_number, :occupied, :occupant_name, :last_cleaned

  def self.open_connection # open the connection to the database
    conn = PG.connect( dbname: 'room' )
  end

  def self.all # method to get all instance from our database

    # calling the open_connection method
    conn = self.open_connection

    # creating a SQL string
    sql = "SELECT * FROM room ORDER BY id"

    # execute the connection with SQL string, stored in results variable
    results = conn.exec(sql) # controller will be able to access the data stored in results

    rooms = results.map do |tuple| # tuple will become room_data, tuple = key value pair, look at tuple as each iteration through the loop
      self.hydrate tuple
    end
  end

  # find one instance/room using the ID that'll give it when we all it
  def self.find id
    conn = self.open_connection

    sql = "SELECT * FROM room WHERE id=#{id} LIMIT 1" # SQL to find using ID, limit provides very first one

    rooms = conn.exec(sql) # get raw results

    room = self.hydrate rooms[0] # clean up array

    room # return cleaned first room
  end

  def save
    conn = Room.open_connection

    if (!self.id) # if instance doesn't have an ID, create new isntance
      sql = "INSERT INTO room (room_number, floor_number, occupied, occupant_name, last_cleaned) VALUES ('#{self.room_number}','#{self.floor_number}','#{self.occupied}','#{self.occupant_name}','#{self.last_cleaned}')"
    else
      sql = "UPDATE room SET room_number='#{self.room_number}', floor_number='#{self.floor_number}', occupied='#{self.occupied}', occupant_name='#{self.occupant_name}', last_cleaned='#{self.last_cleaned}' WHERE id='#{self.id}'"
    end

    conn.exec(sql)
  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM room WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate room_data # HYDRATION - cleaning up raw data pulled from database to turn it into a readable hash for the controller
    room = Room.new # new isntance of room

    # saves data from database into related variables on new room instance
    room.id = room_data['id']
    room.room_number = room_data['room_number']
    room.floor_number = room_data['floor_number']
    room.occupied = room_data['occupied']
    room.occupant_name = room_data['occupant_name']
    room.last_cleaned = room_data['last_cleaned']

    room # return room
  end

end
