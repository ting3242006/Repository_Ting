let lottoNumbers = [10, 9, 8, 7, 6, 5]

var i = 0
//Q1
for i in 3...5 {
    print(lottoNumbers[i])
}

//Q2
for i in lottoNumbers.reversed(){
    print(i)
}
for i in lottoNumbers.sorted(){
    print(i)
}

for i in lottoNumbers {
    if i % 2 == 0{
    print(i)
    }
}


//Q3
var x = lottoNumbers[i]
i = 5
while i >= 0  {
    print (lottoNumbers[i])
    i -= 1
}

i = 0
while i < 6 {
    if lottoNumbers[i] % 2 == 0{
        print(lottoNumbers[i])
    }
    i += 1
}



//Q4
i = 5
repeat {
    print(lottoNumbers[i])
    i -= 1
} while i >= 0

i = 0
repeat{
    if lottoNumbers[i] % 2 == 0{
    print(lottoNumbers[i])
    }
    i += 1
} while i < 6




//Q5
//While 跟 repeat-while 的不同是，
//Repeat-While 無論如何都會先執行一次要被執行的程式碼，執行完之後才會檢查條件

//Q6
var isRaining: Bool = true
if isRaining == true{
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//Q7
var jobLevel:Int = 0
switch jobLevel {
case 1 :
        print("Member")
case 2 :
    print("Team Leader")
case 3 :
    print("manager")
case 4 :
    print("Director")
default:
    print("We don't have this job.")
}
