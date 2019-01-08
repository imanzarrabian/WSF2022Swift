import UIKit

/* Déclarations implicites => Utilisant le type inference */
var str = "Hello, playground" // String
var intVar = 42 //Int
var doubleVar = 42.0 // Double
var boolVar = false // Bool

//boolVar = 76 => Sort une erreur de compilation

/* Déclarations explicite */
var myNewString: String!
myNewString = "toto"

var myNewInt: Int!
myNewInt = 42

var myNewDouble: Double = 56.0
var somme: Double = 42 + myNewDouble

var myAge = 39
//STRING INTERPOLATION
var ageString = "mon age est \(myAge)" + "ans"
print(ageString)

str = "toto"
print(str)

/* Constantes*/

let strconst = "tata"

var nbItem = 0
nbItem = nbItem + 1
print(nbItem)


/* Tuples */
let jonsAge = ("Snow", 32, "Starks")

print("Jon's name is \(jonsAge.0)")
print("Jon's age \(jonsAge.1)")
print("Jon's family is \(jonsAge.2)")

let (name, age, family) = ("Snow", 32, "Starks")

print("Jon's name is \(name)")
print("Jon's age \(age)")
print("Jon's family is \(family)")


let jonsInfos = (name: "Snow", age: 32, family: "Starks")

print("Jon's name is \(jonsInfos.name)")
print("Jon's age \(jonsInfos.age)")
print("Jon's family is \(jonsInfos.family)")


// Types complexes

//Array
var firstArray = [2, 5, 19, 34]
let firstArrayHetero: [Any] = [2, 5, 19, 34, "72", false]
var firstEmptyArray: [Int] = []
var firstEmptyArray2 = [Int]()
var firstEmptyArray3 = Array<Int>()

let a = firstArray[2]
print(a)
firstArray[2] = 20
let b = firstArray[2]
print(b)

firstArray.append(78)
firstArray += [90]
print(firstArray)

let indexToRemove = 4
if indexToRemove < firstArray.count {
    firstArray.remove(at: indexToRemove)
} else {
    print("trop gourmand")
}
print(firstArray)

for value in firstArray {
    if value % 2 == 0 {
        print(value * 2)
    } else {
        print(value)
    }
}

for (indice, value) in firstArray.enumerated() {
    if indice % 2 == 0 {
        print(value * 2)
    } else {
        print(value)
    }
}

//Array concatenation
let totalArray = [2, 3] + [1, 5]
print(totalArray)

//Dictionary
var usernames = ["iman.zarrabian@gmail.com" : "imanzarrabian",
                 "jon@thewall.com" : "kings road",
                 "sansa@wintefell.com" : "bastard"]

let usernamesHeterogen: [String: Any] = ["iman.zarrabian@gmail.com" : "imanzarrabian",
                                         "jon@thewall.com" : "bastard",
                                         "sansa@wintefell.com" : 42]


let value = usernames["jon@thewall.com"]
usernames["jon@thewall.com"] = "King in the North"

print(usernames["jon@thewall.com"]!)


//Control Flow
let conditionInt = 82
let conditionInt2 = 42

if conditionInt < conditionInt2 {
    print("YES")
} else if conditionInt == 82 {
    print("YOHOU")
} else {
    print("NOOOOO")
}
