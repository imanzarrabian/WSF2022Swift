/*EXPLICIT NAMING*/

//Example of non returning function
func megaPrint(a: Int) {
    print(a)
}

//Example of returning function
func add(a: Int, b: Int) -> Int {
    return a + b
}
let result = add(a: 5, b: 10)
print(result)

//////
func multiplyBy4(_ c: Int) -> Int {
    return c * 4
}
let result2 = multiplyBy4(3)
print(result2)

////////
func multiply(op1 c: Int, op2 d: Int) -> Int {
    return c * d
}

let result3 = multiply(op1: 2, op2: 10)
print(result3)


/*ANONYMOUS FUNCTIONS <=> CLOSURES*/

//USE CASE 1
let addFunction = { (a: Int, b: Int) -> Int in
    return a + b
}

print(addFunction(3, 2))

//USE CASE 2
let multiplyOperation = { (a: Int, b: Int) -> Int in
    return a * b
}

let addOperation = { (a: Int, b: Int) -> Int in
    return a + b
}

let substractOperation = { (a: Int, b: Int) -> Int in
    return a - b
}

func applyArithmeticOperation(a: Int, b: Int, f: (Int, Int) -> Int) -> Int {
    return f(a, b)
}

let result4 = applyArithmeticOperation(a: 2, b: 4, f: substractOperation)
print(result4)


/*Higher order functions*/

//map
let array = [2, 0, 3, -9]
let resultMapped = array.map { $0 * 2 }

print(resultMapped)

//filter
//Keep all values higher tnan 0
let resultFiltered = array.filter { $0 > 0 }
print(resultFiltered)

//filter detailed version
let resultFilteredDetailedVersion = array.filter ({ (a: Int) -> Bool in
    return a > 0
})
print(resultFilteredDetailedVersion)

//sort
let sortedArray = array.sorted { $0 > $1 }
print(sortedArray)

/* Functions Use cases */
func average(tab: [Int]) -> Double {
    var total = 0
    var average = 0
    for v in tab {
        total += v
    }
    if tab.count > 0 {
        average = total/tab.count
    } else {
        average = 0
    }
    return Double(average)
}

let moyenne = average(tab: [2,3,5,10])
let moyenne2 = average(tab: [20,13,20,18])

print(moyenne)
print(moyenne2)
