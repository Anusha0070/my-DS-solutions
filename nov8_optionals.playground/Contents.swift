import UIKit

//Give the example of optional using struct and classes

struct Department{
    
    var departmentName: String?
    
    func checkName() -> String{
        
        if let name = self.departmentName{ //if let to unwrap
            print("\nValid name")
            return "\nDepartment name: " + name
        } else{
            print("\nInvalid name")
            return "\nDepartment name: Default"
        }
        
    }
}

var dept1 = Department(departmentName: "Finance")
print(dept1.checkName())




// Class Example

//class Employee{
//
//    var role: String?
//    var salary: Int?
//
//    
//    init(role: String?, salary: Int?){
//        self.role = role
//        self.salary = salary
//    }
//    
//    func calculateSalary() -> String{
//        guard let role else { // guard let to unwrap role variable
//            return "\nRole not found!"
//        }
//        
//        var sal = self.salary ?? 0 // nil coalescing to unrap salary variable
//        
//        switch role {
//            
//        case "Developer":
//            return "\nDeveloper's salary is \(sal) + 1000 (bonus). Total is : $\(sal + 1000)"
//            
//        case "Manager":
//            return "\nManager's salary is \(sal) + 2000 (bonus). Total is : $\(sal + 2000)"
//            
//        default:
//            return "\nRole not found"
//        }
//        
//    }
//}



// Test case 1: role = valid salary valid
//var emp1 = Employee(role: "Manager", salary: 10000)
//print(emp1.calculateSalary())

// Test case 2: role = nil salary valid
//var emp2 = Employee(role: nil, salary: 10000)
//print(emp2.calculateSalary())

// Test case 3: role = valid salary nil
//var emp3 = Employee(role: "Developer", salary: nil)
//print(emp3.calculateSalary())

/*print(emp3.salary!)*/ // Fatal error while unwrapping
