import UIKit

// Coding practice, given array [4,3,5,7,1,3,4] and number k=3. Turn array to [4,4,5,7,1,3,3]. In order words, swap the k=3 to the end of the array without using any additional space.



func swapNumber(arr : [Int], k: Int) -> [Int]{
    
    var arr1: [Int] = arr
    var temp: [Int] = []
    

    for i in 0..<arr1.count {
        
        guard let x = arr1.firstIndex(of: k) else{
            break
        }
        
        temp.append(arr1[x])
        arr1.remove(at: x)
    }

    return arr1 + temp
}

print(swapNumber(arr: [4,3,5,7,1,3,4], k: 3))
