# Станция :
# Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции)


class RailwayStation

  attr_reader :name
  attr_accessor :train_list

  def initialize(parameters)
    @name = parameters[:name]
    @train_list = parameters[:train_list]
  end


  def resive_train(train)
    puts "прибыл поезд #{train}"
    train_list << train
  end

  def send_train(train)
    puts "Согласно маршруту поезд #{train.name} отправлен на станцию '#{train.route.next_point_name}'"
    return if train_list.index(train) == nil
    train_list.delete(train)
  end

  def show_train_list (type = "")
    puts "Список поездов #{type} на станции '#{name}':"
    @train_list.each_with_index do |train, number|
      puts "#{number+1}. Пооезд '#{train.name}'" if train.type.to_s == type.to_s || type.to_s == ""
    end
  end

  def train_count (type = "")
    @train_list.select { |train| train.type.to_s == type.to_s || type.to_s == "" }.size
  end

  def show_train_count (type = "")
    puts "Количество поездов #{type} на станции '#{name}' :#{train_count type}"
  end

end
