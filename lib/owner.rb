class Owner
  attr_reader :species, :name

  @@owners = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end
  
  
  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

  def self.reset_all
    @@owners.clear
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def cats
    Cat.each {|cat| cat.owner == self}
  end
   
  def dogs
    Dog.each {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

end