/*Описать несколько структур – любой легковой автомобиль и любой грузовик.
Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
Инициализировать несколько экземпляров структур. Применить к ним различные действия.
Вывести значения свойств экземпляров в консоль.*/


enum EngineMode: String {
    case on = "запущен"
    case off = "заглушен"
}
enum WindowState: String {
    case open = "открыты"
    case close = "закрыты"
}
enum bodyVol {
    case emptyBody (empty: String)
    case fullBody (full: String)
    case partiallyBody (kg: Double)
}

struct PassengerCar {
    var brand: String
    var year: Int
    var bodyVolume: bodyVol
    var engine: EngineMode
    var windowState: WindowState
    var FullBodyCapacity: Double
    
    mutating func actionWind(action: WindowState) {
        switch action {
        case .close:
            print(action.rawValue)
            self.windowState = .close
        case .open:
            print(action.rawValue)
            self.windowState = .open
        }
        
    }
    
    func description(){
        print("Легковой автомобиль \(brand) \(year) года выпуска. Окна \(windowState.rawValue). Кузов \(bodyVolume). ")
    }
}

struct Truck {
    var brand: String
    var year: Int
    var bodyVolume: bodyVol
    var engine: EngineMode
    var windowState: WindowState
    var FullBodyCapacity: Double
    
    mutating func actWind(action: WindowState){
        switch action {
        case .open:
            self.windowState = .open
        case .close:
            self.windowState = .close
        }
    }
    func printWindows() {
        print(windowState.rawValue)
    }
    
    func description(){
        print("Грузовой автомобиль \(brand) \(year) года выпуска. Окна \(windowState.rawValue). Кузов \(bodyVolume). ")
    }
}

var PassengerCar1 = PassengerCar(brand: "Volkswagen", year: 2018, bodyVolume: .emptyBody(empty: "Кузов пустой"), engine: .off, windowState: .close, FullBodyCapacity: 200.0)
var PassengerCar2 = PassengerCar(brand: "Toyota", year: 2010, bodyVolume: .fullBody(full: "Кузов полный"), engine: .on, windowState: .open, FullBodyCapacity: 330.6)

var Truck1 = Truck(brand: "Scania", year: 2005, bodyVolume: .partiallyBody(kg: 590.1), engine: .off, windowState: .close, FullBodyCapacity: 800.0)
var Truck2 = Truck(brand: "Gaz", year: 1995, bodyVolume: .fullBody(full: "Кузов полный"), engine: .on, windowState: .close, FullBodyCapacity: 600.0)

PassengerCar1.actionWind(action: .close)
PassengerCar1.actionWind(action: .open)

PassengerCar1.description()
PassengerCar2.description()

Truck1.windowState
Truck1.printWindows()

Truck1.description()
Truck2.description()
