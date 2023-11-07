import OtherTarget
import MyLibrary


enum namespaceA {}
enum namespaceB {}

extension namespaceA {
    struct Smth {
        func foo() {
            print("shmek")
        }
    }
}

extension namespaceB {
    struct Smth {
        func foo() {
            print("kek")
        }
    }
}

namespaceA.Smth().foo()
namespaceB.Smth().foo()

MyLibrary.CoolFunction()
OtherTarget.OtherFunction()
