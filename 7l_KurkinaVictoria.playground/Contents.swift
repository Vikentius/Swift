import Foundation

/*1. Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
2. Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.*/

enum nailsServiceError: Error {

    case noNailVarnish(nailVarnishNeed: Int)
    case noFreeMaster
    case noService

}

struct NailsService {
    var nailvarnish: Int
    var masters: Int
   
}

class beautySalon {

    var services = [
        "Manicure": NailsService(nailvarnish:5, masters:20),
        "Pedicure": NailsService(nailvarnish:5, masters:10),
        "Intwohands": NailsService(nailvarnish:10, masters:10),
    ]
    
    var masternailvarnish = 0

    func errors(serviceName name: String) throws {

        guard let nailsServices = services[name] else {
            throw nailsServiceError.noService
        }
        
        guard nailsServices.masters > 0 else {
            throw nailsServiceError.noFreeMaster
        }

        guard nailsServices.nailvarnish <= masternailvarnish else {
            throw nailsServiceError.noNailVarnish(nailVarnishNeed: nailsServices.nailvarnish - masternailvarnish)
        }

        masternailvarnish -= nailsServices.nailvarnish

        var someNailsService = nailsServices
        someNailsService.nailvarnish -= 1
        services[name] = someNailsService

        print("Воспользовался/воспользовалась услугой \(name)")
    }
}

let preferredService = [
    "Elena": "Manicure",
    "Denis": "Intwohands",
    "Maria": "Pedicure"
]

func clientnailsService(сlient: String, nailsService: beautySalon) throws {

    let clientName = preferredService[сlient] ?? "Intwohands"
    try nailsService.errors(serviceName: clientName)
}

var сlient = beautySalon()
сlient.masternailvarnish = 10

do {
    try clientnailsService(сlient: "Denis", nailsService: сlient)
} catch nailsServiceError.noFreeMaster {
    print("Нет свободных мастеров")
} catch nailsServiceError.noService {
    print("В салоне нет такой услуги")
} catch nailsServiceError.noNailVarnish(let nailVarnishNeed) {
    print("Недостаточно лаков, нужно еще \(nailVarnishNeed) лаков.")
}
