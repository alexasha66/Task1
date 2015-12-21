require_relative 'train'
require_relative 'route'
require_relative 'station'


# Инициализируем объекты для маршрутов (пока один, пустой)
station_list = []


route_parameters = {:station_list => station_list}
route_1 = Route.new(route_parameters)

# Инициализируем объекты для поездов

train_parameters1 = {:name => "Сосновка - Васюки", :train_type => Train::TYPE[0], :quantity_carriage => 10, :route => route_1}
train_parameters2 = {:name => "Красино - Угольки", :train_type => Train::TYPE[1], :quantity_carriage => 12, :route => route_1}

train1 = Train.new(train_parameters1)
train2 = Train.new(train_parameters1)
train3 = Train.new(train_parameters2)
train4 = Train.new(train_parameters1)
train5 = Train.new(train_parameters2)
train6 = Train.new(train_parameters2)
train7 = Train.new(train_parameters1)

# формируем список1 поездов
train_list1 = []
train_list1 << train1
train_list1 << train2
train_list1 << train3
train_list1 << train4
train_list1 << train5
train_list1 << train6
train_list1 << train7


train8 = Train.new(train_parameters1)
train9 = Train.new(train_parameters2)
train10 = Train.new(train_parameters2)
train11 = Train.new(train_parameters1)

# формируем список2 поездов
train_list2 = []
train_list2 << train8
train_list2 << train9
train_list2 << train10
train_list2 << train11

# Инициализируем объекты для станций начальной и конечной

station_parameters = {:name => "Парнас", :train_list => train_list1}
station_1 = RailwayStation.new(station_parameters)

station_parameters = {:name => "Купчино", :train_list => train_list2}
station_2 = RailwayStation.new(station_parameters)

station_parameters = {:name => "Пионерская", :train_list => train_list2}
station_3 = RailwayStation.new(station_parameters)

station_parameters = {:name => "Московская", :train_list => train_list2}
station_4 = RailwayStation.new(station_parameters)


# station "Парнас"
# station "Купчино"

station_list << station_1
station_list << station_2

# station_1.show_train_list
# station_1.show_train_list(Train::TYPE[0])

station_1.show_train_list(Train::TYPE[1])
station_1.show_train_count(Train::TYPE[1])

# Для маршрута  задаем список остановок (станций)

route_1.station_list = station_list
route_1.show_station_list
# Для поезда train1 задаем маршрут
train1.change_route route_1
# Для маршрута поезда train1 добавляем новыю стацию 
train1.route.add_station station_3
train1.route.show_station_list
train1.route.show_next_station
train1.route.show_previos_station

train1.detach_carriage
train1.attach_carriage
train1.attach_carriage
train1.show_quantity_carriage
station_1.move_train_next_station(train1)
train1.speed_up 5
train1.speed_up 15
train1.speed_up 30
train1.speed_up 70

train1.speed_down 30
train1.speed_down 30
train1.speed_down 10
train1.route.show_current_station
train1.route.show_next_station
# Едем дальше
station_1.move_train_next_station(train1)
train1.speed_up 15
train1.speed_up 55
train1.speed_up 30
train1.speed_up 60

train1.speed_down 30
train1.speed_down 80
train1.speed_down 70
train1.speed_down 30
train1.route.show_current_station
train1.route.show_next_station
# Приехали
