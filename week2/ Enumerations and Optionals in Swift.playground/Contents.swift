enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice(gasoline: Gasoline) -> Double {
        switch gasoline{
        case .oil92 : return 31.2
        case .oil95 : return 32.7
        case .oil98 : return 34.7
        case .diesel : return 29.1
        }
    }
}

Gasoline.oil92.rawValue

/*
當不同的case有不同對應的值，這時就可以使用 Associated value
ex.
 enum Shape {
    //radius
    case circle(radius: Double)
    
    //width, height
    case rectangle(
        width: Double,
        height: Double
    )
 }
*/

//Q2
class Pet{
    let name: String
    
    init(name: String){
        self.name = name
    }
}
class People{
    let pet: Pet?
    init(pet: Pet){
        self.pet = pet
    }
}


let ting = People(pet: Pet.init(name: "Right"))

func ifTingHavePet(pet :Pet?) {
    if let TingHavePet:Pet = pet {
        print("Ting's pet is \(TingHavePet)")
    } else {
        print("No pet.")
    }
}

ifTingHavePet(pet: ting.pet)

let sue = People(pet: Pet.init(name: "Left"))

func ifSueHavePet(pet: Pet?) {
    guard let pet = pet else {
        print("No pet.")
        return
    }
    print("Sue's pet is \(pet.name)")
}

ifSueHavePet(pet: sue.pet)

