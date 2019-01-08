var array = [54, 42, 12, 0, 1 , 3 , 67, 89, 78]

print("Tableau de départ : ")
print(array)

// En affichant un elements sur 2
print("\nUn élément sur deux")
for (indice, value) in array.enumerated() {
    if indice % 2 == 0 {
        print(value)
    }
}
// En affichant uniquement les elements pairs
print("\nUniquement les valeurs pairs")
for value in array {
    if value % 2 == 0 {
        print(value)
    }
}

print("\nLa somme du tableau")
// Afficher la somme d'un tableau
var somme = 0
for v in array {
    somme += v
}
print(somme)
// Afficher la moyenne du tableau

print("\nLa moyenne d'un tableau")
var total = 0
var average = 0
for v in array {
    total += v
}
if array.count > 0 {
    average = total/array.count
} else {
    average = 0
}
print(average)

// Afficher le résutat de factoriel 10
var fact = 1
for v in (1...5).reversed() {
    fact = fact * v //10 * 9 * 8 * 7 * 6 * 5 ....
}

print(fact)

for i in 1...5 {

}

for i in 1..<5 {

}


for i in (1...5).reversed() {

}
