
let arrayOfString = ["0","32", "toto", "-1", "99"]
let arrayOfInt = arrayOfString.map { (a: String) -> Int? in
    return Int(a)
}
let filteredArray = arrayOfInt.filter { (a) -> Bool in
    if a != nil {
        return true
    } else {
        return false
    }
}
print(filteredArray.map({ (a) -> Int in
    return a!
}))



//Unwrapping
//1 - Force unwrapping
var a: Int? = 32
var b = a!
print(b)


//2 - implicit binding
if a != nil {
    print(a!)
} else {
    print("no value found")
}

//3 - optional binding
if let b = a {
    print(b)
} else {
    print("no value found")
}

let array =  [2,3, 0, nil, 72]


//operateur ternaire
let b2: Int? = nil

let c = b2 != nil ? b2! : 0
print(c)
let c2 = b2 ?? 0


