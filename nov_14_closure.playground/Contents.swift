import UIKit

// sum , sub , div , multiplication ( optinal parameter )
// conver every function to closure
// take marks of four subject and find the total marks using closure

// Closure for addition.
var addClosure = {(number1: Int?, number2: Int?) ->  Int? in
    
    if let number1 , let number2{
        return (number1 + number2)
    }else{
        return nil
    }
}

if let sum = addClosure(2,3){
    print("Closure sum of numbers is : \(sum)")
} else {
    print("Closure sum numbers are not valid")
}

// Closure for substraction
var diffClosure = {(number1: Int?, number2: Int?) ->  Int? in
    
    if let number1 , let number2{
        if(number1 > number2) {
            return (number1 - number2)
        } else {
            return (number2 - number1)
        }
    }else{
        return nil
    }
}

if let diff = diffClosure(8,4){
    print("Closure difference of numbers is : \(diff)")
} else {
    print("Closure difference numbers are not valid")
}


// Closure for multiplication
var multiplyClosure = {(number1: Int?, number2: Int?) ->  Int? in
    
    if let number1 , let number2{
        return (number1 * number2)
    }else{
        return nil
    }
}

if let mul = multiplyClosure(8,4){
    print("Closure multiplication of numbers is : \(mul)")
} else {
    print("Closure multiplication numbers are not valid")
}

// Closure for Division
var divideClosure = {(number1: Double?, number2: Double?) ->  Double? in
    
    if let number1 , let number2{
        if(number2 != 0){
            return number1 / number2
        } else {
            return 0
        }
        
    }else{
        return nil
    }
}

if let div = divideClosure(8,3){
    print("Closure division of numbers is : \(div)")
} else {
    print("Closure division numbers are not valid")
}


// Total marks of four subject and find the total marks using closure

var totalMarks = { (sub1: Int?, sub2: Int?, sub3: Int?, sub4: Int?) -> Int? in
    
    guard let sub1, let sub2, let sub3, let sub4 else { return nil }
    return sub1 + sub2 + sub3 + sub4
}

if let total = totalMarks(20, 30, 40, 50) {
    print("Total marks is : \(total)")
} else {
    print("Total marks are not valid")
}


