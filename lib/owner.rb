require 'pry'

class Owner
  # code goes here	
   attr_accessor :pets 
  attr_reader :name, :species, :cats, :dogs

   @@all = []


   def initialize(name, pets = {:dogs => [], :cats => [] })
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = [] 
    @pets = {:dogs => [], :cats => []}
  end

   def self.all
    @@all
  end

   def self.count
    @@all.count
  end

   def self.reset_all
    @@all.clear
  end

   def say_species
    "I am a #{@species}."
  end
  
   def buy_cat(name)
    new_cat = Cat.new(name, self)
    @pets[:cats] <<  new_cat
  end
  

   def buy_dog(name)
    new_dog = Dog.new(name, self)
    @pets[:dogs] << new_dog
  end

   def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

   def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

   def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @cats.clear
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @dogs.clear
  end

   def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end

 end 