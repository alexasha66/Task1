# Поезд:
# Имеет, тип, который указывается при создании: грузовой, пассажирский и количество вагонов.
# Поезд может делать следующие вещи:
# набирать скорость
# показывать текущую скорость
# тормозить
# показывать количество вагонов
# прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
# Принимать маршрут следования
# Перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута

# require_relative 'route'

class Train


  TYPE = [:passanger, :cargo]

  attr_accessor :name, :type, :quantity_carriage, :speed, :route

  def initialize(parameters)
    @name = parameters[:name]
    @type = parameters[:train_type]
    @quantity_carriage = parameters[:quantity_carriage]
    @speed = 0
    @route = parameters[:route]
  end

  def show_quantity_carriage
    puts "текущее количество вагонов: #{quantity_carriage}"
  end

  def attach_carriage()
    @quantity_carriage += 1
    puts "Принят дополнительный вагон. "
  end

  def detach_carriage()
    @quantity_carriage -= 1
    puts "Отцеплен вагон."
  end

  def show_current_speed
    puts "текущая cкорость поезда #{speed} км/ч"
  end


  def speed_up(value)
    @speed += value
    puts "Скорость увеличена на #{value} км/ч"
    show_current_speed
  end

  def speed_down(value)
    if @speed - value > 0
      @speed -= value
      puts "Скорость снижена на #{value} км/ч"
      show_current_speed
    else
      @speed = 0
      puts "Скорость снижена до 0 км/ч, поезд остановлен."
    end
  end

  def change_route(route)
    @route = route
    puts "На станции '#{route.current_station_name}' изменен маршрут следования, следующая станция '#{route.next_station_name}'"
  end

end


