# Усложненное задание: создать программу в файле main.rb,
# которая будет позволять пользователю через текстовый интерфейс делать следующее:
#                                                                                                                                   Создавать станции
# Создавать поезда
# Добавлять вагоны к поезду
# Отцеплять вагоны от поезда
# Помещать поезда на станцию
# Просматривать список станций и список поездов на станции

require_relative 'obj_interface'


class UserInterface
  @@station_list = []
  @@station_list = []
  @@current_train = "SEMEN"


  # @@current_class = Common_Obj_Interface

  def self.current_train
    @@current_train
  end


  def self.start
    nom_command = 0

    current_class = Common_Obj_Interface

    loop do
      puts current_class.to_s
      current_class.commands
      current_class = current_class.show_command_menu

      nom_command = gets.to_i
      exit if nom_command.zero? && (current_class.to_s == "Common_Obj_Interface")

    end
  end

end

UserInterface.start


