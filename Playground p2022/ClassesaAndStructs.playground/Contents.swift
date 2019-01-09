

//Class declaration

class Habitable {
    var surface: Double

    init(surface: Double) {
        self.surface = surface
    }

    func agrandir(additionSurface: Double) {
        print("surface additionnel \(additionSurface)")
        print("surface actuel \(surface)")

        surface += additionSurface
    }
}


class Garden: Habitable {
    var hasFence: Bool

    init(surface: Double, hasFence: Bool) {
        self.hasFence = hasFence
        super.init(surface: surface)
    }
}


class House: Habitable {
    let address: String
    var nbRooms: Int
    var hasToilet: Bool
    var garden: Garden?

    init(nbRooms: Int, address: String, surface: Double,  hasToilet: Bool, garden: Garden?) {
        self.address = address
        self.nbRooms = nbRooms
        self.hasToilet = hasToilet
        self.garden = garden
        super.init(surface: surface)
    }

    func sellGarden() {
        garden = nil
    }

    func hasGarden() -> Bool {
        return garden != nil
    }

    override func agrandir(additionSurface: Double) {
        nbRooms += 1
        super.agrandir(additionSurface: additionSurface)
    }
}

let wsfGarden = Garden(surface: 1000, hasFence: false)
wsfGarden.agrandir(additionSurface: 50)
print(wsfGarden.surface)

let yourHouse = House(nbRooms: 150, address: "59 rue Nationale", surface: 42000, hasToilet: true, garden: wsfGarden)


print(yourHouse.surface)
print((yourHouse.garden?.surface)!)

let myHouse = House(nbRooms: 3, address: "20 rue saint nicolas", surface: 150, hasToilet: true, garden: nil)
print(myHouse.surface)


yourHouse.sellGarden()
//print((yourHouse.garden?.surface)!)


if yourHouse.hasGarden() {
    print((yourHouse.garden?.surface)!)
} else {
    print("pas de jardin à mesurer")
}

yourHouse.agrandir(additionSurface: 10)

print(yourHouse.surface)
print(yourHouse.nbRooms)




////////////// STRUCT
//STRUCT != CLASS
//1 - STRUCT PAS D'HERITAGE
//2 - STRUCT a des CONSTRUCTEURS PAR DEFAUT
//3 - LES CLASS SONT EN REFERENCE TYPE ALORS QUE LES STRUCTS SONT EN VALUE TYPES
struct Person {
    let name: String
    let age: Int
}

let me = Person(name: "Iman", age: 39)
print(me.age)
