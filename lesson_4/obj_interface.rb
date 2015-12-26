require_relative 'train'
require_relative 'route'
require_relative 'station'
require_relative 'cargotrain'
require_relative 'passangertrain'
require_relative 'carriage'


class Common_Obj_Interface
  def self.commands
    @@commands = {1 => "Станции", 2 => "Поезда", 3 => "Маршруты"}
  end


  def self.show_command_menu
    system "clear"
    puts "----------------------------"

    @@commands.each do |key, command|
      puts "#{key}:  #{command}"
    end

    puts "----------------------------"
    print "Выберите команду:"
  end

  def self.actions(nom_action)
    case nom_action
      when 1
        InterfaceStation
      when 2
        InterfaceTrain
      when 3
        InterfaceRoute
    end
  end
end


class InterfaceTrain < Common_Obj_Interface

  def self.commands
    @@commands = {1 => "создать поезд", 2 => "список поездов", 3 => "выбрать поезд", 4 => "вывод станций маршрута", 5 => "назначить маршрут", 6 => "прицепить вагон", 7 => "отцепить вагон"}
  end

  def self.create_form
    print "Введите название поезда: "
    name = gets.strip
    print "Введите количество вагонов: "
    quantity_carriage = gets.to_i
    {:name => name, :quantity_carriage => quantity_carriage, :route => []}
  end


  def self.actions(nom_action)
    case nom_action
      when 1
        train_parameters = create_form
        UserInterface.current_train = Train.new(train_parameters)
      when 2

      when 3
      when 4
      when 5
      when 6
      when 7
    end
  end
end

class InterfaceStation < Common_Obj_Interface

  def self.commands
    @@commands = {0 => "вернуться в главное меню", 1 => "создавать станцию", 2 => "список станций", 3 => "выбрать станцию", 4 => "список поездов на станции", 5 => "добавить поезд"}
  end

  def self.create_form
    print "Введите название станции: "
    name = gets.strip
    print "Введите количество вагонов: "
    quantity_carriage = gets.to_i
    {:name => name, :quantity_carriage => quantity_carriage, :route => []}
  end

  def self.actions(nom_action)
    case nom_action
      when 1
        train_parameters = create_form
        UserIterface.current_station = Station.new(train_parameters)
      when 2

      when 3
      when 4
      when 5
    end

  end

end

class InterfaceRoute < Common_Obj_Interface

  def self.commands
    @@commands = {0 => "вернуться в главное меню", 1 => "создать маршрут", 2 => "список маршрутов", 3 => "выбрать маршрут", 4 => "вывод станций маршрута", 5 => "добавить станцию", 6 => "удалить станцию из маршрута"}
  end

  def self.actions(nom_action)
    case nom_action
      when 1
        route_parameters = create_form
        UserIterface.current_train = Train.new(train_parameters)
      when 2

      when 3
      when 4
      when 5
      when 6
    end

  end
end
