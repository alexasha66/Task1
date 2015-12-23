# Поезд:
# Имеет, тип, который указывается при создании: грузовой, пассажирский и количество вагонов.
# Поезд может делать следующие вещи:
# набирать скорость
# показывать текущую скорость
# тормозить
# показывать количество вагонов
# прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). 

# Прицепка/отцепка вагонов может осуществляться только если поезд не движется.

# Принимать маршрут следования
# Перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую, на основе маршрута

# require_relative 'route'

class Train

  TYPE = [:passanger, :cargo]

  attr_reader :name, :type, :quantity_carriage, :speed, :route

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

  def show_type
    puts "тип поезда (#{name}) - #{type_name} "
  end

  def type_name
    @type == :cargo ? "Грузовой" : "Пассажирский"
  end

  def show_current_speed
    puts "текущая cкорость поезда #{speed} км/ч"
  end


  def show_route
    route.show_point_list
  end

  def show_current_station
    puts "поезд находится на станции '#{route.current_point_name}'"
  end

  def show_next_station
    if route.last_point?
      puts "поезд находится на конечной станции: '#{route.current_point_name}'"
    else
      puts "следующая станция: '#{route.next_point_name}'"
    end
  end

  def show_previos_station
    if route.first_point?
      puts "поезд находится на начальной станции: '#{route.current_point_name}'"
    else
      puts "предыдущая станция: '#{route.previos_point_name}'"
    end
  end


# Методы внутри объекта, которые будем вызывать для изменения свойств 
  private

# определение сеттеров для свойств
  attr_writer :name, :type, :quantity_carriage, :speed, :route

  def change_route(route)
    @route = route
    puts "На станции '#{route.current_point_name}' изменен маршрут следования, следующая станция '#{route.next_point_name}'"
  end

  def move_to_station(station)
    if route.point_list.include?(station)

      if not (station.name == route.current_point_name)
        route.current_point! station
        puts "Следующая станция #{route.current_point_name}. Поезд отправляется..."
      else
        puts "поезд уже находится на заданной станции: '#{route.current_point_name}'"
      end

    else
      puts "Внимание, следующая станция #{station.name} еще не включена в маршрут. Повторите оперецию позже..."
    end

  end

  def move_next_station
    if not (route.next_point == route.current_point)
      route.current_point = route.next_point
      puts "Следующая станция #{route.current_point_name}. Поезд отправляется..."
    else
      puts "поезд уже находится на заданной станции: '#{route.current_point_name}'"
    end
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


  def detach_carriage()
    if @speed == 0
      @quantity_carriage -= 1
      puts "Отцеплен вагон."
    else
      puts "Поезд находится в движении (#{speed}км/ч). Операция не возможна."
    end
  end

# Далее методы внутри объекта, которые будем вызывать для изменения свойств, и переопрелять при наследовании 
  protected

  def attach_carriage()
    if @speed == 0
      @quantity_carriage += 1
      puts "Принят дополнительный вагон. "
    else
      puts "Поезд находится в движении (#{speed}км/ч). Операция не возможна."
    end
  end


end


