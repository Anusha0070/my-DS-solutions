import UIKit

//There is an integer, and try to get each digital of the integer and sum them.
//For example : Int 123, then we have 1,2,3. So total number is 6.

func sumOfDigits(x: Int)-> Int{
    
    var num = x
    
    var sum : Int = 0
    while(num > 0){
        var temp = num % 10
        sum += temp
        num = num/10
    }
    
    return sum
    
}

print(sumOfDigits(x: 89))
