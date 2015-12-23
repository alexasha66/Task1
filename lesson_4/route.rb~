# Маршрут:
# Имеет начальную и конечную станцию, а также список промежуточных станций.
# Начальная и конечная станции указываются при создании маршрута, а промежуточные могут добавляться между ними.
# Может добавлять станцию в список
# Может удалять станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной

# require_relative 'station'

class Route

  attr_accessor :station_list, :current_station

  def initialize(parameters)
    @station_list = parameters[:station_list]
    @current_station = 0
  end

  def add_station(station)
    @station_list.insert(@station_list.size-1, station)
    puts "В маршрут добавлена станция '#{station.name}'"
  end

  def delete_station(station)
    return if @station_list.index(station) == nil
    @station_list.delete(station)
    puts "Из маршрута удалена станция '#{station}'"
  end

  def show_station_list
    puts "Текущий маршрут: "
    @station_list.each_with_index { |station, number| puts "#{number+1}. Станция '#{station.name}'" }
  end

  def last_station?
    @current_station==@station_list.size - 1
  end

  def first_station?
    @current_station.zero?
  end

  def current_station_name
    @station_list[@current_station].name
  end

  def next_station_name
    @station_list[next_station].name
  end

  def previos_station_name
    @station_list[previos_station].name
  end

  def current_station! station
    @current_station = @station_list.index(station)
  end

  def next_station
    if last_station?
      @current_station
    else
      @current_station + 1
    end
  end

  def previos_station
    if first_station?
      @current_station
    else
      @current_station -1
    end
  end


  def show_current_station
    puts "поезд находится на станции '#{current_station_name}'"
  end

  def show_next_station
    if last_station?
      puts "поезд находится на конечной станции: '#{current_station_name}'"
    else
      puts "следующая станция: '#{next_station_name}'"
    end
  end

  def show_previos_station
    if first_station?
      puts "поезд находится на начальной станции: '#{current_station_name}'"
    else
      puts "предыдущая станция: '#{previous_station_name}'"
    end
  end
end

# Проверка модели объекта

# station_list = []
# station_list << "Парнас"
# station_list << "Купчино"

# alt_station_list = []
# alt_station_list << "Проспект Просвещения"
# alt_station_list << "Озерки"
# alt_station_list << "Удельная"
# alt_station_list << "Пионерская"
# alt_station_list << "Пионерская"
# alt_station_list << "Чёрная речка"
# alt_station_list << "Петроградская"
# alt_station_list << "Горьковская"
# alt_station_list << "Невский проспект"
# alt_station_list << "Сенная площадь"
# alt_station_list << "Технологический институт"
# alt_station_list << "Фрунзенская"
# alt_station_list << "Московские ворота"
# alt_station_list << "Электросила"
# alt_station_list << "Парк Победы"
# alt_station_list << "Московская"
# alt_station_list << "Звёздная"


