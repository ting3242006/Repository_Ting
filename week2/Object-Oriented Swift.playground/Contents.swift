//Q1

class Animal {
    var gender: Gender
    init(gender: Gender) {
        self.gender = gender
        }
    enum Gender {
        case male
        case female
        case undefined
    }
    func eat(){
        print("I eat everything!")
    }
}
let animal = Animal(gender: .undefined)
animal.eat()

//Q2
class Elephant:Animal {
    override init(gender: Gender) {
        super.init(gender: gender)
    }
    
    override func eat() {
        print("I eat plants.")
    }
}

class Tiger:Animal {
    override init(gender: Gender) {
        super.init(gender: gender)
    }
    
    override func eat() {
        print("I eat meat.")
    }
}

class Horse:Animal {
    override init(gender: Gender) {
        super.init(gender: gender)
    }
    
    override func eat() {
        print("I eat grass.")
    }
}

let elephant = Elephant(gender: .female)
elephant.eat()
let tiger = Tiger(gender: .male)
tiger.eat()
let horse = Horse(gender: .female)
horse.eat()

//Q3
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

/*
Q3
1.class 可以繼承，有subclass ; struct 不能繼承
2.class 是 reference type ; struct 是 value type
3.class 儲存與操作資料 ; struct 儲存簡單資料
*/
 
/*
Q5
instance method：先需要生成一個特定型別 (class, structure, or enumeration)的imstance，才能使用這個實體裡的方法。
type method：屬於特定型別 (class, structure, or enumeration) 本身的方法。不用產生instance就可以直接呼叫function。
*/

/*
Q6
class 和 struct 裡，都要將 property 賦予初始值(init)
在struct中，可以使用默認的init，可省略不寫 ;
但class一定要寫出init。
*/

/*
Q7
在每個 instance 都有內建一個內建隱藏的 self，來代表這個 instance
 ex.
 func increment() {
    self.count += 1
 }
在 Type Methods 的方法體（body）中，self 指這個型別本身，而不是型別的某個 instance。
*/


/*
Q8
Value type 將從原本的資料複製產生新的資料 (Int, String, Array, Dictionary皆從 Struct 定義)，所以這個會用到比較大的記憶體 ;
Reference type 則是共享同一份資料 (Class)。
*/
