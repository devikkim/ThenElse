# ThenElse

[![Version](https://img.shields.io/cocoapods/v/ThenElse.svg?style=flat)](https://cocoapods.org/pods/ThenElse)
[![License](https://img.shields.io/cocoapods/l/ThenElse.svg?style=flat)](https://cocoapods.org/pods/ThenElse)
[![Platform](https://img.shields.io/cocoapods/p/ThenElse.svg?style=flat)](https://cocoapods.org/pods/ThenElse)

Simplest extension of Bool.

## Example

```swift
  var odd: Set = [1,3,5,7,9]
  var even: Set = [2,4,6,8,0]

  odd.insert(1).inserted.then {
      print("inserted")
    }.else {
      print("do not inserted")
    }
  // print : "do not inserted"

  let insertResult = even.insert(1).inserted.then{
      return "inserted"
    }.else{
      return "do not inserted"
    }
    
  print("\(insertResult)") // print: "inserted"
    
  let value = 11
    
  let filterArray = (value % 2 == 1)
    .then{ () -> [Int] in
      let arr = [Int](0...value).filter{ $0 % 2 == 1 }
      return arr
    }.else { () -> [Int] in
      let arr = [Int](0...value).filter{ $0 % 2 == 0 }
      return arr
    }
    
  print(filterArray) // print: [1, 3, 5, 7, 9, 11]
```

## Installation

ThenElse is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ThenElse'
```

## Author

devikkim, devikkim@gmail.com

## License

ThenElse is available under the MIT license. See the LICENSE file for more info.
