
class Pokemon
  attr_accessor :id, :name, :type, :db
  
  @@all = []
  
  def initialize(id, name=nil, type=nil, db=nil)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  
  def self.find
  end

    
  
  
  
  
end


