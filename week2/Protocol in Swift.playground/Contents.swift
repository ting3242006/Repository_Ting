protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    var name:String
    let toolMan:ToolMan
    func arrestCriminals() {
    }
}
struct Engineer: ToolMan {
    func fixComputer() {
    }
}

let aGuy = Person(name: "Steven", toolMan: Engineer())
