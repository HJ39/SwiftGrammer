import UIKit

var array1: [Int] = [0,1,2,3,4,5,6,7,8,9]
var array2 : [Int] = [-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]

//for i in array{
//    print(i)
//}

for i in array1{
    print("\(i+array2[i])")
}

