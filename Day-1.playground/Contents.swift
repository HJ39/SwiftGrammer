import UIKit

var array1: [Int] = [0,1,2,3,4,5,6,7,8,9]
var array2 : [Int] = [-1,-2,-3,-4,-5,-6,-7,-8,-9,-10]

//where을 사용하여 조건을 걸 수 있음
for i in array1 where i<4{
    print(i)
}

for i in array1{
    print("\(i+array2[i])")
}

/**===================================**/

enum Grade : Int {
    case first = 1
    case second = 2
}

//rawValue를 하는 경우 숫자 값을 얻을 수 있음
let myGrade = Grade.first.rawValue
print("myGrade = \(myGrade)")

enum School {
    case elementary, middle, high
}
print("초등학교 : \(School.elementary)")
print("중학교: \(School.middle)")

enum Bicycle{
    case MTB(korean: String)
    case Road(korean: String)

    //enum에서 안에 값을 얻기 위해 만든 함수
    func getBicycle() -> String{
        switch self {
        case .MTB(let korean):
            return korean
        case .Road(let korean):
            return korean
        }
    }
}

print("자전거 종류 \(Bicycle.MTB(korean: "산악자전거"))")
let MTBKorean = Bicycle.MTB(korean: "산악자전거")
print("자전거 종류 \(MTBKorean.getBicycle())")


/**===================================**/


for i in 0...5{
    print("i = \(i)")
}
