class Restaurant
  attr_reader :name, :opening_time, :dishes
  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end
end
