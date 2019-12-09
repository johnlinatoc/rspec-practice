class Dog
  @@all = []

  def initialize(hunger_level: 0, tail_wagging: false)
    @hunger_level = hunger_level
    @tail_wagging = tail_wagging
    @@all << self
  end

  def self.all
    @@all
  end

  def bark
    "Woof!"
  end

  def hungry?
    @hunger_level > 5
  end

  def feed
    @hunger_level = 0
  end

  def wag_tail
    @tail_wagging = true
  end
end
