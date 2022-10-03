import UIKit

func sum(num1 : Int , num2 : Int) -> Int{
    return num1 + num2
}
sum(num1: 5, num2: 5)
//sum : (Int,Int)->Int bunu yapma amacımız aslında fonksiyonları bir parametre olarak kullanabileceğimizi göstermek.
func calculate(num1:Int,num2:Int, myFunction:(Int,Int) -> Int) -> Int {
    return myFunction(num1, num2)
}
//Bir fonksiyon başka bir fonksiyona parametre olarak verilebiliyor.
calculate(num1: 5, num2: 2, myFunction: sum)
//------------------------------------------------------------------------------------------------------------------
calculate (num1: 4, num2: 9, myFunction :{ (num1: Int, num2: Int) -> Int in
    return num1*num2
})

calculate (num1: 4, num2: 9, myFunction :{ (num1 , num2) -> Int in
    return num1*num2
})

calculate (num1: 4, num2: 9, myFunction :{ (num1 , num2) in
    return num1*num2
})

calculate (num1: 4, num2: 9, myFunction :{ (num1 , num2) in num1*num2 })

calculate (num1: 4, num2: 9, myFunction :{ $0 * $1 }) //$ işareti ile referans vererekte işlemi yaptırabiliriz. En sade hali bu şekilde

//-------------------------------------------------------------------------------------------------------------------
//map ile closure kullanımı

let myArray = [10,20,30,40,50]
func test(num1:Int)->Int {
    return num1/5
}
myArray.map(test) //array içindeki değerleri 5 e böler. Forloop ile yapmaya gerek yok

print(myArray.map({$0/5})) //aynı şekilde arraye referans göstererekte içindeki değerleri 5 e böler. Forloop ile yapmaya gerek yok
