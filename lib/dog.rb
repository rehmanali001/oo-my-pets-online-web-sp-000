class Dog
  # code goes here	
   attr_accessor :mood, :owner, :dogs
  attr_reader :name

   @@all = []

   def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    owner.dogs << self
    @@all << self
  end

   def self.all
    @@all
  end

 end 	end 