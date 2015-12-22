# Маршрут:
# Имеет начальную и конечную станцию, а также список промежуточных станций.
# Начальная и конечная станции указываются при создании маршрута, а промежуточные могут добавляться между ними.
# Может добавлять станцию в список
# Может удалять станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной


class Route

  attr_accessor :point_list, :current_point

  def initialize(parameters)
    @point_list = parameters[:point_list]
    @current_point = 0
  end

  def add_point(point)
    @point_list.insert(@point_list.size-1, point)
    puts "В маршрут добавлена станция '#{point.name}'"
  end

  def delete_point(point)
    return if @point_list.index(point) == nil
    @point_list.delete(point)
    puts "Из маршрута удалена станция '#{point}'"
  end

  def show_point_list
    puts "Текущий маршрут: "
    @point_list.each_with_index { |point, number| puts "#{number+1}. Станция '#{point.name}'" }
  end

  def last_point?
    @current_point==@point_list.size - 1
  end

  def first_point?
    @current_point.zero?
  end

  def current_point_name
    @point_list[@current_point].name
  end

  def next_point_name
    @point_list[next_point].name
  end

  def previos_point_name
    @point_list[previos_point].name
  end

  def current_point! point
    @current_point = @point_list.index(point)
  end

  def next_point
    if last_point?
      @current_point
    else
      @current_point + 1
    end
  end

  def previos_point
    if first_point?
      @current_point
    else
      @current_point -1
    end
  end

end

# Проверка модели объекта

# point_list = []
# point_list << "Парнас"
# point_list << "Купчино"

# alt_point_list = []
# alt_point_list << "Проспект Просвещения"
# alt_point_list << "Озерки"
# alt_point_list << "Удельная"
# alt_point_list << "Пионерская"
# alt_point_list << "Пионерская"
# alt_point_list << "Чёрная речка"
# alt_point_list << "Петроградская"
# alt_point_list << "Горьковская"
# alt_point_list << "Невский проспект"
# alt_point_list << "Сенная площадь"
# alt_point_list << "Технологический институт"
# alt_point_list << "Фрунзенская"
# alt_point_list << "Московские ворота"
# alt_point_list << "Электросила"
# alt_point_list << "Парк Победы"
# alt_point_list << "Московская"
# alt_point_list << "Звёздная"


