let array = [0,32, 56, -1, 99]
print(array)

//Ecrire des fonctions
/*
//1 - transforme ce tableau en un tableau équivalent mais ou chq élément est elevé au cube*
let cubeArray = array.map { $0 * $0 * $0 }
print(cubeArray)

//2 - filtrage sur toutes les valeurs impaires
let filteredArray = cubeArray.filter ({ (a: Int) -> Bool in
    return a % 2 == 0
})
print(filteredArray)

//let filteredArray = cubeArray.
//3 - un tri par ordre décroissant
let sortedArray = filteredArray.sorted { (a: Int, b: Int) -> Bool in
    return a > b
}
print(sortedArray)

//5 - transformer ce tableau en un tableau équivalent composé de chaine de caractères
let stringArray = sortedArray.map { (a: Int) -> String in
    return String(a)
}
print(stringArray)
*/


//1 - transforme ce tableau en un tableau équivalent mais ou chq élément est elevé au cube*
let finalResultArray = array.map { $0 * $0 * $0 }
                            .filter { $0 % 2 == 0 }
                            .sorted { $0 > $1 }
                            .map { String($0) }
print(finalResultArray)



let arrayOfString = ["0","32", "toto", "-1", "99"]
let arrayOfInt = arrayOfString.map { (a: String) -> Int? in
    return Int(a)
}
print(arrayOfInt)
