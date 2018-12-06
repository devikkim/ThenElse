import XCTest
import ThenElse

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThenElseExample() {
        // This is an example of a functional test case.
      
      var odd: Set = [1,3,5,7,9]
      var even: Set = [2,4,6,8,0]

      odd.insert(1).inserted.then {
          print("added")
        }.else {
          print("existed")
        }
      
      if even.insert(1).inserted {
        print("added")
      } else {
        print("existed")
      }
      
      let a = 10
      let b = 100
      
      (a > b)
        .then {
          print("a is bigger then b")
        }.else {
          print("b is bigger then a")
        }

    }
  
}
