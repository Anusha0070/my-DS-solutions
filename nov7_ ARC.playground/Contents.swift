import UIKit


// Strong reference example with use of weak

class Student{
    
    var studentName: String
    weak var university: University?
    
    init(studentName: String){
        self.studentName = studentName
        print("Student: \(studentName) initialized")
    }
    
    deinit{
        print("Student: \(studentName) deinitialized")
    }
}

class University{
    
    var universityName : String
    var student: Student?
    
    init(universityName: String) {
        self.universityName = universityName
        print("University: \(universityName) initialized")
    }
    
    deinit{
        print("University: \(universityName) deinitialized")
    }
}


if (1==1) {
    
    var student1 = Student(studentName: "Anusha")
    var university1 = University(universityName: "University of Arizona")
    
    university1.student = student1
    student1.university = university1
    
}


// Notes
/**
 1. Strong reference: when one object referes to another class object and vice versa and creates a a cycle.
 
 2. weak keyword is used to break this strong reference
 
 3. Unowned keyword also breaks strong reference
 
 4. Weak is preferred over unknown because weak can become nil when the obj it refers to deallocated but unowned never becomes nil and can crash the program
 
 5. Objects are independent of each other you can use weak and when objects are dependent then you can use unowned
 
 */
