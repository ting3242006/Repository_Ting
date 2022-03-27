//Q1
var myFriends: [String] = []

//Q2
myFriends += ["Ian", "Bomi", "Kevin"]

//Q3
myFriends.append("Michael")

//Q4
myFriends.swapAt(0, 2)

//Q5
for _ in myFriends {
    print(myFriends)
}

//Q6
//目前的index只有到4，沒有index 5

//Q7
let firstElement = myFriends.first 
myFriends[0]

//Q8
let lastElement = myFriends.last
myFriends[myFriends.count-1]

//Q9
var myCountryNumber : [String : Int]

//Q10
myCountryNumber = ["US":1, "GB":44, "JP":81]

//Q11
myCountryNumber["GB"] = 0

//Q12
let emptyDictionary = [String: String]()
let emptyDictionary2: [String:String] = [:]

//Q13
//Removing Key-Value Pairs
myCountryNumber.removeValue(forKey: "GB")
print(myCountryNumber)
