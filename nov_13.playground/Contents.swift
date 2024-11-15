import UIKit

class MyClass {
    var myProperty: Int = 0 {
        willSet {
            print("Will set to \(newValue)")
        }
        didSet {
            print("Did set from \(oldValue) to \(myProperty)")
        }
    }
    init() {
        defer { myProperty = 1 }
        myProperty = 2
    }
}
let instance = MyClass()
instance.myProperty = 3
