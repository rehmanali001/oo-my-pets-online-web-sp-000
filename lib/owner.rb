class Owner
    attr_reader :name, :species, :cats, :dogs
    @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
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
  
  def buy_cat(name)
    new_cat = Cat.new(name,self)
  end
  def buy_dog(name)
    new_dog = Dog.new(name,self)
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
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil 
  end
  @dogs.clear
  @cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
  end
  @cats.clear
end
  
  def list_pets
  "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end
end
