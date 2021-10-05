import Foundation

// [var, let]
var foo = "bar"
foo = "hello"

let a = "b"
// a = "c"          ==>         error       ...         "let" is constant

type(of: foo)       //==>         string


// [array]
let arr = ["hello", "goodbye"]
arr[0]              //  ==>     "hello"
arr[0] = "hi"       //  ==>     error       ==> which means, "array" is value type (not reference typ)


var arr2 = ["hello", "goodbye"]
var arr3 = arr2
arr3[0] = "hi"
print(arr2)         //  ==> even though you mess up with arr3, it doesn't affect to arr2
print(arr3)

var arr4 = arr
arr4[0] = "hi"      //  ==> it doesn't generate error, even though arr was constant.



// [enum]
enum Days {
    case Monday
    case Teusday
    case Wednesday
}

enum Result {
    case success
    case failure
}

func networkCall() -> Result {
    if true {
        return .success     // You don't have to say "Result.success"
    } else {
        return .failure 
    }

    let result = Result.success

    // [switch]
    switch result {
        case .success:
        case .failure:
    }
}

// [if, else if, else]
let number = 4

if number > 5 {

} else if number <0 {

} else {

}

// [conditional assignment ???]
var option = (number == 3) ? 5 : 2


// [for loop syntax]
let nums = [1,2,3,4,5]

for element in nums {
    print(element)
}

for i in 0..< array.count {
    print(array[i])
}

for _ in 0..< array.count {
    print("hi")
}

// [function]
func getData(url: String) -> Data {
    return Data()
}

func sayHi(message: String) {
    print(message)
}

func greet(to name: String) {
    print(name)
}

func sing(_ song: String) -> String{
    return "sing \(song)"
}

// [Throw error]

enum MyError {
    case error1
}
func hello(_ name: String? = nil) throws -> String {
    if (name == nil) {
        throw MyError.error1
    }
    if (name == "peter") {
        return "hello"
    }
}

func yoyo() {
    do {
        try hello()
        print("it works!")
    } catch {
        print("hi")
    }
}

func getData2() throws {
    let string = ""
    try JSONEncoder().encode(string)
}
