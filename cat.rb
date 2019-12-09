class Cat

  attr_reader :name

  def initialize(name:)
    @name = name
  end

  def meow
    "Meow!"
  end
end
