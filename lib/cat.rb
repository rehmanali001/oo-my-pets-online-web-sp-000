class Cat
  # code goes here	
   attr_accessor :mood, :owner, :cats
  attr_reader :name

   @@all = []

   def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    owner.cats << self
    @@all << self
  end

   def self.all
    @@all
  end

 end 	end 