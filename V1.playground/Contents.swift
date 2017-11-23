
protocol DescriptableVehicle {
    func describe() -> String
}


class AbstractVehicle {
    var name: String {
        return "Abstract vehicle name"
    }
}

class Car: AbstractVehicle {
    override var name: String {
        return "Car vehicle name"
    }
    let vin: String = "ABCDEFGH VIN"
}

class Bike: AbstractVehicle {
    override var name: String {
        return "Bike vehicle name"
    }
    let saddle: String = "Comforable saddle name"
}

class Plane: AbstractVehicle {
    override var name: String {
        return "Plane vehicle name"
    }
    let numberOfEngines: Int = 4
}

extension Car: DescriptableVehicle {
    func describe() -> String {
        return "Car, \(self.name), \(self.vin)"
    }
}

extension Bike: DescriptableVehicle {
    func describe() -> String {
        return "Bike, \(self.name), \(self.saddle)"
    }
}

extension Plane: DescriptableVehicle {
    func describe() -> String {
        return "Plane, \(self.name), \(self.numberOfEngines)"
    }
}


let car = Car()
let bike = Bike()
let plane = Plane()
let descriptableVehicles: [DescriptableVehicle] = [car, bike, plane]


descriptableVehicles.forEach { vehicle in
    print(vehicle.describe())
}
