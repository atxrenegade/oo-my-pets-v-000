require 'pry'
class Owner
  @@all = []
  attr_accessor :pets, :name
  attr_reader :species, :pets
  
  def initialize(name)
    @owner = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end  
  
  def self.all
    @@all 
  end 
  
  def self.reset_all
    @@all.clear
  end  
  
  def self.count
    @@all.count
  end  
  
  def species_initialize(species)
    if species == "cat"
      name = Cat.new(name)
    elsif species == "dog"
      name = Dog.new(name)
    else
      name = Fish.new(name)
    end
  end  
  
  def say_species
<<<<<<< HEAD
    "I am a #{self.species}."
=======
    "I am a #{@species}."
>>>>>>> e0ad7e18617fe885617b0a3a4584406b379a8e38
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
<<<<<<< HEAD
    self.pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
=======
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
>>>>>>> e0ad7e18617fe885617b0a3a4584406b379a8e38
  end
  
  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end
  
<<<<<<< HEAD
  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
      self.pets[:fishes].map {|fish| fish.mood = "happy"}
=======
  def play_with_cats(pets)
   
  end
  
  def feed_fish
      @pets[:fishes].map do |k| 
        k.mood = "happy"
    end
>>>>>>> e0ad7e18617fe885617b0a3a4584406b379a8e38
  end  
 
  
  def sell_pets
    @pets = {fishes: [], cats: [], dogs: []}
    @pets.each do {|k, v| binding.pry}
    
    self.pets.each do |owner_hash, pets_array| 
      pets_array.map do |pet| 
        pet.mood = "nervous"
      end
    end  
    self.pets = {fishes: [], cats: [], dogs: []}
  end
  
  def list_pets
<<<<<<< HEAD
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
=======
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
>>>>>>> e0ad7e18617fe885617b0a3a4584406b379a8e38
  end  
end