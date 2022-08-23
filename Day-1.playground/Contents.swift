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

// ...은 0부터 5까지 출력
for i in 0...5{
    print("i = \(i)")
}

// ..<은 0부터 4까지 출력
for i in 0..<5{
    print("i = \(i)")
}

//빈 배열 생성시 []사용
var randomInt : [Int] = []

print(randomInt)
for _ in 0...10 {
    //랜덤 숫자 발행시 사용
    let randomNumber = Int.random(in: 0...100)
    randomInt.append(randomNumber)
}
print(randomInt)


/**===================================**/


var optionalValue : Int?

if optionalValue == nil{
    optionalValue = 10
}

if let value = optionalValue{
    print(value)
}

var value2 : Int?
// ??를 사용하여 값이 없는 경우 ??다음 값을 넣겠다 라고 사용 가능
print("value2 = \(value2 ?? 30)")
if value2 == nil{
    value2 = 90
}
print("value2 = \(value2 ?? 30)")

unWrappedOptional(i: optionalValue)
unWrappedOptional(i: value2)

func unWrappedOptional(i: Int?){
    //guard let 을 사용하는 경우 함수 내부에서 사용해야함
    guard let opValue = i else { return }
    print (opValue)
}


/**===================================**/


struct TestStruct{
    var name: String
    var id: Int
}

var test1 = TestStruct(name: "JJ", id: 1)
var test2 = test1   //Call by Value

print("test1 = \(test1)")
test2.id = 2
print("test1 = \(test1)")
print("test2 = \(test2)")


class TestClass{
    var name: String
    var id: Int
    init(name:String, id: Int){
        self.name = name
        self.id = id
    }
}

var test3 = TestClass(name: "JJ", id: 1)
var test4 = test3   //Call by Referance
print("before test3 = \(test3.id)")
print("before test4 = \(test4.id)")

test4.id=2
print("after test3 = \(test3.id)")
print("after test4 = \(test4.id)")


/**===================================**/


var id = 0 {
    willSet { //변경 전 실행 됨
        print("설정될 예정 = \(id)")
    }
    didSet { //값이 변경 후 실행됨
        print("설정 됨 = \(id)")
    }
}
id = 100
id = 20


/**===================================**/


struct MyArray<SomeElement>{
    
    var elements: [SomeElement] = [SomeElement]()
    
    init(elements: [SomeElement]){
        self.elements = elements
    }
    // _언더바 유무의 차이는 생성시 매개변수 선언 유무 차이
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

var intArray = MyArray(elements: [1,2,3])
print("intArray : \(intArray.elements)")

var stringArray = MyArray(["가","나","다"])
print("stringArray : \(stringArray.elements)")

class AArray<SomeElement>{
    var elements: [SomeElement] = [SomeElement]()
    
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

var intClassArray = AArray([3,4,5])
print("intClassArray : \(intClassArray.elements[1])")

var stringClassArray = AArray(["a","b","c"])
print("stringClassArray : \(stringClassArray.elements)")

class Aclass{
    var name: Int
    
    init(_ name: Int){
        self.name = name
    }
}

class Bclass<Aclass>{
    var elements: [Aclass] = [Aclass]()
    
    init(_ elements: [Aclass]){
        self.elements = elements
    }
}

var testing1 = Bclass([Aclass(3),Aclass(2)])

var bClassElements = testing1.elements
print("testing1 : \(testing1.elements[1].name)")


/**===================================**/


