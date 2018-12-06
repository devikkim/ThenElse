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
        print("inserted")
      }.else {
        print("do not inserted")
    }

    let insertResult = even.insert(1).inserted.then{
        return "inserted"
      }.else{
        return "do not inserted"
      }
    
    print("\(insertResult)")
    
    let value = 11
    
    let filterArray = (value % 2 == 1)
      .then{ () -> [Int] in
        let arr = [Int](0...value).filter{ $0 % 2 == 1 }
        return arr
      }.else { () -> [Int] in
        let arr = [Int](0...value).filter{ $0 % 2 == 0 }
        return arr
    }
    
    print(filterArray)
    
  }
  
}
