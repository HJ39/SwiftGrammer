import UIKit

func getName(_ name: String) -> String{
    return "내 이름은 \(name)"
}

var getNameClousure: (String) -> String

func sayHello( getName: (String) -> String , name: String) -> String{
    return getName(name)
}

let resultOne = sayHello(getName: getName(_:), name: "Hohohohoho")


let numbers = [3,7,4,-2,1,3,25,6]

let stringNumbers = numbers.map{(aNumber: Int) -> String in
    return "\(aNumber) 입니다."
}

let evenNumbers: [Int] = numbers.filter { aNumber in
    return aNumber % 2 == 0
}

let oddNumbers: [Int] = numbers.filter { aNumber in
    return aNumber % 2 != 0
}


/**==============================================================================**/


var myArray = [3,6,1,2,61,23,11,-1,2]

var ascendingorderArray = myArray.sorted()
//sorted는 배열을 정렬 후 반환 하는 것

myArray.sort()
//sort는 자기 자신을 정렬 하는 것

var descendingArray = myArray.sorted(by: >)
// 내림차순


/**==============================================================================**/


struct MyPet{
    var title: String = "타이틀 없음"
    private (set) var name:String = "이름 없음"
    /**
     private 만 설정할 경우 읽고 쓰기 불가능
     set을 사용하는 경우 변경하는 것만 불가능
     */
    
    mutating func setName(to newName: String){
    //struct 내용을 변경하기 위해 mutating사용
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title

myPet.title = "asdfasf"
myPet.title

//myPet.name = "KK" //private set이라 변경 불가능
myPet.name


/**==============================================================================**/


myArray.forEach { array in
    print(array)
}

for(index, array) in myArray.enumerated(){
    print("index: \(index) , item: \(array)")
}


/**==============================================================================**/


