//: Playground - noun: a place where people can play

class PrivateFramework {
    private class AbstractVehicle: VehicleProtocol {
        var name: String {
            return "Abstract vehicle name"
        }
    }
    
    private class Car: AbstractVehicle, CarProtocol {
        override var name: String {
            return "Car vehicle name"
        }
        let vin: String = "ABCDEFGH VIN"
    }
    
    private class Bike: AbstractVehicle, BikeProtocol {
        override var name: String {
            return "Bike vehicle name"
        }
        let saddle: String = "Comforable saddle name"
    }
    
    private class Plane: AbstractVehicle, PlaneProtocol {
        override var name: String {
            return "Plane vehicle name"
        }
        let numberOfEngines: Int = 4
    }
    
    func produceVehicles() -> [VehicleProtocol] {
        let car = Car()
        let bike = Bike()
        let plane = Plane()
        return [car, bike, plane]
    }
}

protocol VehicleProtocol {
    var name: String { get }
}

protocol CarProtocol {
    var vin: String { get }
}

protocol BikeProtocol: VehicleProtocol {
    var saddle: String { get }
}

protocol PlaneProtocol: VehicleProtocol {
    var numberOfEngines: Int { get }
}


protocol DescriptableVehicle {
    func describe() -> String
}


//extension Car: DescriptableVehicle {
//    func describe() -> String {
//        return "Car, \(self.name), \(self.vin)"
//    }
//}
//
//extension Bike: DescriptableVehicle {
//    func describe() -> String {
//        return "Bike, \(self.name), \(self.saddle)"
//    }
//}
//
//extension Plane: DescriptableVehicle {
//    func describe() -> String {
//        return "Plane, \(self.name), \(self.numberOfEngines)"
//    }
//}

let vehicles: [VehicleProtocol] = PrivateFramework().produceVehicles()

//let car: CarProtocol = Car()
//let bike: BikeProtocol = Bike()
//let plane: PlaneProtocol = Plane()
//let descriptableVehicles: [DescriptableVehicle] = [car, bike, plane]

//descriptableVehicles.forEach { vehicle in
//    print(vehicle.describe())
//}
