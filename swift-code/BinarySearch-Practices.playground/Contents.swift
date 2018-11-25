//
// BinarySearch-Practices
//
//  Created by Quang Nguyen on 11/24/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

var str = "BinarySearch-Examples"
var zeroToAHundred = [Int]()

(0...100).forEach{ zeroToAHundred.append($0) }

// Binary Search
// Function returns its search value if it exists, otherwise returns -1
func searchFor(value: Int, in numArray: [Int]) -> Int {
    var leftIndex = 0
    var rightIndex = numArray.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = numArray[middleIndex]
        
        if middleValue == value {
            return middleValue
        } else if value < middleValue {
            rightIndex = middleIndex - 1
        } else if value > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return -1
}

// Applied BinarySearch
print(searchFor(value: 23, in: zeroToAHundred))

