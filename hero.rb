class Hero
	def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
	end
  attr_reader :name
  def health_up
    @health += 10
  end
  def health_down
    @health -= 10
  end

end
