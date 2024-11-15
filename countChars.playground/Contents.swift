import UIKit

//Count the number of occurrences of each char in the input string.

func countCharacters(str: String)-> [Character : Int]{
    
    var temp = str.lowercased()

    var dict : [Character : Int] = [:]
    
    for i in temp{
        var cnt = 0
        for j in temp{
            if i == j{
                cnt += 1
            }
        }
        dict[i] = cnt
    }
    
    return dict
   
}

print(countCharacters(str: "Anusha"))
