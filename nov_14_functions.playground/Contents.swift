import UIKit

//1. Create a function that takes a string as input and returns an optional integer. If the string can be converted to an integer, return the integer value; otherwise, return nil.

func convertToInt(str: String) -> Int? {
    
    guard let x = Int(str) else {
        return nil
    }
    
    return x
}

print(convertToInt(str: "123") ?? 0)

//2. Implement a function that takes an array of strings and returns an array of optional integers. Use appropriate methods to unwrap the optionals and filter out any nil values.

func convertArrayToInt(_ array: [String]) -> [Int]?{
    
    var temp : [Int]? = []
    
    for i in array{
        if let number = Int(i) {
            temp?.append(number)
        } else {
            continue
        }
    }
    
    return temp
    
}

print(convertArrayToInt(["123e", "123", "34"]) ?? [])


// Use Generic function in it

struct GenericFuncTests {
    
    
    func printTheValue<T>(num : [T]) {
        for i in num {
            print("\n Value is : \(i)")
        }
    }
    
    
    
    
    func mergeArrays<T>(a: [T], b: [T]) -> [T] {
        return a + b
    }
    
    
}




var genericTest = GenericFuncTests()

genericTest.printTheValue(num: [1,2,3,4,5])
//genericTest.printTheValue(num: ["mango","apple","banana"])

print(genericTest.mergeArrays(a: [1,2,3], b: ["Hello","World"]))


class TestGenericFunc<T>{
    
    var element: [T] = []
    
    func addElement( x: T) {
        element.append(x)
    }
    
    func midElement() {
        if element.count % 2 == 0 {
            print("No middle Element")
        } else {
            print("Middle element is \(element[element.count/2])")
        }
    }
}

var test1 = TestGenericFunc<Any>()

test1.addElement(x: 10)
test1.addElement(x: 20)
test1.addElement(x: "Anusha")
print(test1.element)
test1.midElement()

var test2 = TestGenericFunc<String>()

test2.addElement(x: "Hello")
test2.addElement(x: "World")
print(test2.element)

test2.midElement()


//    func swapTwoElemts<T>( a: inout T, b: inout T) {
//        let temp = a
//        a = b
//        b = temp
//    }

//var x = "Hello", y = "World"
//print("Before swap x: \(x) and y: \(y)")
//testGenericFunc.swapTwoElemts(a: &x, b: &y)
//print("After swap x: \(x) and y: \(y)")



// generic to interpolate
//
//func interpolateSomething<T>(x: T, y: T) {
//    print("\(x) and \(y)")
//}
//
//interpolateSomething(x: "Anusha", y:"Raju")
