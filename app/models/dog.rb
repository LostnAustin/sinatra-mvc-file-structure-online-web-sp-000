class Dog
  attr_accessor :name, :breed, :age
  @@all = []

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  # dog =  Dog.new(name, breed, age)
@@all << self
# binding.pry
  end


  def self.save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create(name, breed, age)
      dog = Dog.new(name, breed, age)
    dog.save
    dog
  end


end
