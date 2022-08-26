import UIKit

struct Pet{
    init() {
        print("Pet created")
    }
}

struct Friend{
    
    var name: String
    
    lazy var pet: Pet = Pet()
    //사용할 때 메모리에 올라감
    
    init(_ name: String) {
        self.name = name
        print("Friend created")
    }
}

var myFriend = Friend("JJ")

myFriend.pet    //pet 생성됨

 
/**============================================**/


