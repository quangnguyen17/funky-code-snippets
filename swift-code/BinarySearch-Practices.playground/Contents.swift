//
// BinarySearch-Practices
//
//  Created by Quang Nguyen on 11/24/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

let zeroToAHundred =  (0...100).map{ $0 }

func searchFor(value: Int, in numArray: [Int]) -> Int {
    var leftIndex = 0
    var rightIndex = numArray.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = numArray[middleIndex]
        
        if middleValue == value {
            return middleValue // returns the value found
        } else if value < middleValue {
            rightIndex = middleIndex - 1
        } else if value > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    
    return -1 // means no value found
}

print(searchFor(value: 23, in: zeroToAHundred))

