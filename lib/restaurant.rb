class Restaurant
  attr_reader :name, :opening_time, :dishes
  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    hour_open = @opening_time.split(":")[0].to_i
    hour_open += hours_open
    "#{hour_open}:#{@opening_time.split(":")[1]}"
  end
end
