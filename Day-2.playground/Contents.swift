import UIKit

func sayName(_ name: String){
    print("hi~ I'm \(name)")
}
sayName("J")

//inout을 안쓰는 경우 매개변수는 let으로 기본 설정된다
//mutable 상태로 변경됨
func sayHi(_ name: inout String){
    name = "공부하는 " + name
    print("hello, I'm \(name)")
}
var name = "J"
sayHi(&name)


/**========================================================**/


enum MismatchError: Error{  //타입이 Error임
    case nameMismatch
    case numberMismatch
}

func guessMyName(_ input: String) throws{
    print("guessMyName() called")
    if input != "JJ"{
        print("Wrong!")
        throw MismatchError.nameMismatch
    }
    print("Correct!")
}

do{
    try guessMyName("JJa")
    print("Correct!")
}catch{
    print("ERROR MESSAGE = \(error)")
    print("Wrong!")
}


/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: true, false
func guessMyNumber(_ input: Int) throws -> Bool {
    print("guessMyNumber() called")
    if input != 10 {
        print("Wrong!")
//        return false
        throw MismatchError.numberMismatch
    }
    print("Correct!")
    
    return true
}


do{
    let receiveValue = try guessMyNumber(10)
    print(receiveValue)
}catch{
    print("ERROR MESSAGE = \(error)")
    print("Wrong!")
}


/**========================================================**/


struct mutatingStruct{
    var name: String
    
    mutating func changeName(){
        self.name = "hello! " + self.name
    }
}

var a = mutatingStruct(name: "JJ")
print(a.name)

a.changeName()
print(a.name)


/**========================================================**/


var setNumber = Set<Int>()
setNumber.insert(1)
setNumber.insert(2)
setNumber.insert(2) //같은 값인 경우 중복 되지 않음
setNumber.insert(3)
setNumber.insert(3)

setNumber.count

var setString = Set<String>()
setString.insert("a")
setString.insert("a")
setString.insert("b")
setString.insert("b")
setString.insert("ab")

setString.count

setString.contains("a")

if let index = setString.firstIndex(of: "a"){
    print("index : \(index)")
    setString.remove(at: index)
}

setString


/**========================================================**/


/*
 약속 규약
 **delegate, **able, **ing
 */

protocol Naming{    //interface와 비슷함
    var name: String{ get set}
    func getName() -> String
}

struct Friend: Naming{
    var name: String
    
    func getName() -> String {
        return "friend: \(self.name)"
    }
}

Friend(name:"AJ")


/**========================================================**/


