require_relative 'train'

class PassangerTrain < Train

  def initialize(parameters)
    super
    @type = Train::TYPE[1]
  end

  # Переопределенные методы, которые будем вызывать для изменения свойств
  # Должны быть одного типа с родителем

  protected

  def attach_carriage(carriage)
    if self.type == carriage.type
      super
    else
      puts "Пристыковка вагона типа '#{carriage.type_name}' к поезду типа '#{self.type_name}'. Операция не возможна."
    end
  end

end
