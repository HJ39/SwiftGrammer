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


