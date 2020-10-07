

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

  def add_dish(dish)
    @dishes << dish
  end

  def menu_dish_names
    menu_dishes = []
    @dishes.each do |dish|
      menu_dishes << dish.upcase
    end
    menu_dishes
  end

  def open_for_lunch?
    @opening_time.split(":")[0].to_i < 12
  end

  def announce_closing_time(hours_open)
    hour_open = @opening_time.split(":")[0].to_i
    hour_open += hours_open
    adjusted_time = hour_open - (hour_open > 12 ? 12 : 0)
    "#{@name} will be closing at #{adjusted_time}:#{@opening_time.split(":")[1]}#{hour_open > 12 ? "PM" : "AM"}"
  end

end
