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
    Cat.all.each {|cat| cat.name == cat.owner}
  end
   
  def dogs
    Dog.all.each {|dog| dog.owner == self}
  end
  
end