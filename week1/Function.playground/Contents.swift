import Foundation
//Q1
func greet(person name: String) -> String {
    return "Hello," + "\(name)"
}
greet(person: "Luke")

//Q2
func multipy(a: Int, b:Int = 10){
    print(a * b)
}

//Q3
//外部參數名稱用於呼叫function()裡包含的參數
//內部參數名是function{}裡存取的參數名
//為了讓程式更好閱讀
//ex.
//func greet(person: String, from hometown: String) -> String {
//return "Hello " + person + "! Glad you could visit from " +  hometown + "."
//}
//print(greet(person: "Bill", from: "Cupertino"))
//第二個參數的外部名是 from ; 內部名是 hometown
//這樣能讓程式碼更像英文句子


//Q4
//String & Double
