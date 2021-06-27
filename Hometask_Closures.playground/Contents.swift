import Foundation


// ---------------------------------------
// MARK: - Домашнее задание
// ---------------------------------------



// =======================================
// MARK: - Task 1
// =======================================

/*

 1. Написать функцию, которая ничего не возвращает и принимает только одно замыкание `closure`
 2. Это замыкание `closure` тоже ничего не принимает и ничего не возвращает
 3. Ваша функция должна посчитать от `1` до `10` в цикле и только после этого вызвать замыкание `closure`
 4. Добавьте `print(...)` на каждую итерацию цикла, и в замыкание, а затем оцените очередность выполнения команд */




// MARK: - Task 1. Solution
// =======================================

// ...

//func task1 (_ closure: () -> ()) {
//
//    for i in 1...10 {
//
//        print("интерация - \(i)")
//    }
//  closure()
//}
//
//task1 { print("Замыкание вызвано") }



// =======================================
// MARK: - Task 2
// =======================================

/*
 1. Объявите 3 массива с типами [Int], [Double], [String] и заполните их данными
 2. Используя метод массивов `sorted`, отсортируйте массивы  по возрастанию и убыванию
 3. Для каждого массива покажите использование замыкания `sorted` по этапам (аналогично, как делали в классе):
        - В развернутом виде
        - В неявном виде
        - С использование сокращенных имен параметров
        - В сокращенной форме
 */


// MARK: - Task 2. Solution
// =======================================

// ...
//var arrayOfInt: [Int] = [3, 5, 7, 1]
//var arrayOfDouble: [Double] = [0.8, 3.5, 9.7, 5.3]
//var arrayOfString: [String] = ["a", "r", "p", "b"]
//
///* */
//print("Развернутый вид")
//print(arrayOfInt.sorted(by: {(value1: Int, value2: Int) -> Bool in
//    return value1 < value2
//}))
//
//print(arrayOfInt.sorted(by: {(value1: Int, value2: Int) -> Bool in
//    return value1 > value2
//}))
//
//print(arrayOfDouble.sorted(by: {(value1: Double, value2: Double) -> Bool in
//    return value1 < value2
//}))
//
//print(arrayOfDouble.sorted(by: {(value1: Double, value2: Double) -> Bool in
//    return value1 > value2
//}))
//
//print(arrayOfString.sorted(by: {(value1: String, value2: String) -> Bool in
//    return value1 > value2
//}))
//
//print(arrayOfString.sorted(by: {(value1: String, value2: String) -> Bool in
//    return value1 < value2
//}))
//
///* */
//print("Неявный вид")
//
//print(arrayOfInt.sorted(by: {(value1: Int, value2: Int) in value1 < value2 }))
//print(arrayOfInt.sorted(by: {(value1: Int, value2: Int) in value1 > value2 }))
//print(arrayOfDouble.sorted(by: {(value1: Double, value2: Double) in value1 > value2 }))
//print(arrayOfDouble.sorted(by: {(value1: Double, value2: Double) in value1 < value2 }))
//print(arrayOfString.sorted(by: {(value1: String, value2: String) in value1 > value2 }))
//print(arrayOfString.sorted(by: {(value1: String, value2: String) in value1 < value2 }))
//
///* */
//print("сокращенные имена параметров")
//
//print(arrayOfInt.sorted(by: { $0 < $1 }))
//print(arrayOfInt.sorted(by: { $0 < $1 }))
//print(arrayOfDouble.sorted(by: { $0 < $1 }))
//print(arrayOfDouble.sorted(by: { $0 > $1 }))
//print(arrayOfString.sorted(by: { $0 < $1 }))
//print(arrayOfString.sorted(by: { $0 > $1 }))
//
///* */
//
//print("сокращенная форма")
//
//print(arrayOfInt.sorted(by: < ))
//print(arrayOfInt.sorted(by: > ))
//print(arrayOfDouble.sorted(by: < ))
//print(arrayOfDouble.sorted(by: > ))
//print(arrayOfString.sorted(by: < ))
//print(arrayOfString.sorted(by: > ))

// =======================================
// MARK: - Task 3
// =======================================
/*
 1. Напишите функцию, которая принимает массив [Int] и замыкание `closure`, а затем и возвращает `Int`
 2. Замыкание `closure` должно принимать `Int` и `Int?` и возвращать `Bool`
 3. Внутри самой функции создайте переменную опционального типа
 4. Переберите массив [Int] и сравните элементы с объявленной выше переменной, используя замыкание
 5. Если замыкание возвращает `true`, то запишите значение элемента массива в эту переменную
 6. В конце функции возвращайте переменную
 7. Используя этот метод и замыкание найдите `максимальный` и `минимальный` элементы массива */


// MARK: - Task 3. Solution
// =======================================

// ...

//var array: [Int] = [0, 1, 4, 7, 3]
//
//
//func task3 (_ array: [Int], _ closure: (_ value1: Int, _ value2: Int?) -> (Bool)) -> Int {
//    var temp: Int? = 2
//
//    for value in array {
//        if closure(value, temp) {
//            temp = value
//        }
//    }
//
//    return temp ?? 0
//}
//
//
//print("task 3 -- \(task3(array, { $0 > $1 ?? 0 }))")

// =======================================
// MARK: - Task 4
// =======================================
/*
 1. Используя строку, проинициализированную ниже, рреобразуйте ее в массив символов
 2. Используя метод sorted отсортируйте этот массив символов так, чтобы:
        - вначале шли гласные в алфавитном порядке,
        - потом согласные в алфавитном порядке,
        - потом цифры по порядку,
        - а только потом символы */


// MARK: - Task 4. Solution
// =======================================

let vereVeryLongText = """
Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community, first released in 2014. Swift was developed as a replacement for Apple's earlier programming language Objective-C, as Objective-C had been largely unchanged since the early 1980s and lacked modern language features. Swift works with Apple's Cocoa and Cocoa Touch frameworks, and a key aspect of Swift's design was the ability to interoperate with the huge body of existing Objective-C code developed for Apple products over the previous decades. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6, released in 2014. On Apple platforms, it uses the Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program.

Apple intended Swift to support many core concepts associated with Objective-C, notably dynamic dispatch, widespread late binding, extensible programming and similar features, but in a "safer" way, making it easier to catch software bugs; Swift has features addressing some common programming errors like null pointer dereferencing and provides syntactic sugar to help avoid the pyramid of doom. Swift supports the concept of protocol extensibility, an extensibility system that can be applied to types, structs and classes, which Apple promotes as a real change in programming paradigms they term "protocol-oriented programming".

Swift was introduced at Apple's 2014 Worldwide Developers Conference (WWDC). It underwent an upgrade to version 1.2 during 2014 and a more major upgrade to Swift 2 at WWDC 2015. Initially a proprietary language, version 2.2 was made open-source software under the Apache License 2.0 on December 3, 2015, for Apple's platforms and Linux.

Through version 3.0 the syntax of Swift went through significant evolution, with the core team making source stability a focus in later versions. In the first quarter of 2018 Swift surpassed Objective-C in measured popularity.

Swift 4.0, released in 2017, introduced several changes to some built-in classes and structures. Code written with previous versions of Swift can be updated using the migration functionality built into Xcode. Swift 5, released in March 2019, introduced a stable binary interface on Apple platforms, allowing the Swift runtime to be incorporated into Apple operating systems. It is source compatible with Swift 4.

Swift 5.1 was officially released in September 2019. Swift 5.1 builds on the previous version of Swift 5 by extending the stable features of the language to compile-time with the introduction of module stability. The introduction of module stability makes it possible to create and share binary frameworks that will work with future releases of Swift.
"""



// ...

var charInText = Array(vereVeryLongText.lowercased())
var vowe: Set<Character> = ["a","e","i","o","u"]
var consonant: Set<Character> = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
var numbs: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

var arrayOfVowe: [Character] = []
var arrayOfconsonant: [Character] = []
var arrayOfnumbs: [Character] = []
var other: [Character] = []
var result: [Character] = []

for char in charInText {
    if vowe.contains(char) {
        arrayOfVowe.append(char)
    }
    else if consonant.contains(char) {
        arrayOfconsonant.append(char)
    }
    else if numbs.contains(char) {
        arrayOfnumbs.append(char)
    }
    else { other.append(char)}

}


result.append(contentsOf: arrayOfVowe.sorted(by: < ))
result.append(contentsOf: arrayOfconsonant.sorted(by: < ))
result.append(contentsOf: arrayOfnumbs.sorted(by: < ))
result.append(contentsOf: other)
print(result)
// =======================================
// MARK: - Task 5*
// =======================================
/*
 
 1. У Вас имеется массив с именами друзей `names`(проинициализирован ниже)
 2. Реализуйте метод, который отсортирует данный массив по возрастанию количества букв в именах.
 3. !!! Для этого пункта, Вам понадобится провести исследование в документации !!!
    С помощью замыкания преобразуйте массив `names` в словарь, в котором:
        - `key` - это количество символов в имени
        - `value` - это значение, которое получено из имени друга, где все символы отсортированы по убыванию, а пробелы убраны.
        (DACB -> DCBA)
 */


// MARK: - Task 5*. Solution
// =======================================

let names: [String] = ["Arnold Schwarzenegger",
                       "Sean Connery",
                       "Julia Roberts",
                       "Albert Einstein",
                       "Sylvester Stallone",
                       "Jackie Chan",
                       "Emma Stone",
                       "Duncan MacLeod",
                       "Barbra Streisand"]

var tempDict: [Int: String] = [:]


// Сортировка массива
print(names.sorted(by: {
    $0.count > $1.count
}))

//сортировка сразу в словарь
names.forEach({
    var temp: String = ""
    temp = String(Array($0).sorted(by: <).dropLast())
    tempDict[temp.count] = temp
})

print(tempDict)
