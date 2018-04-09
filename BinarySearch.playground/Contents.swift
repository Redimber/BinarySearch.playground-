//: Playground - noun: a place where people can play

import UIKit
let array = [1,2,3,4,5,6,7,8,9,10]
func binarySearch(n:Int, array:[Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    while leftIndex <= rightIndex {

        var midIndex = (rightIndex + leftIndex)/2
        let midValue = array[midIndex]
        
        print("MidValue = \(midValue) in -> [\(leftIndex) - \(rightIndex)]")
        if midValue == n {
            return true
        }
        if n < midValue {
            rightIndex = midIndex-1
        } else if n > midValue {
            leftIndex = midValue+1
        }
    }
    return false
    }
 print(binarySearch(n: 10, array: array))


