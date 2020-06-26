import UIKit

// 变量与常量
//var welcomeMessage: String  // name: type
//welcomeMessage = "Hello, playground"
//
//let x = 0.0, y = 0.0, z = "123"
//print("x = \(x), y = \(y), z = \(z)")

// 数值类型
// Double -> 15位精度 Float -> 6位精度

// Bool
// Swift类型安全机制阻止使用一个非布尔量替换Bool, 例如：
//let i = 1
//if i { // Cannot convert value of type 'Int' to expected condition type 'Bool'
//
//}

// 类型别名，为一个已存在的类型定义一个别名（更具有表达性的名字）
//typealias AudioSample = UInt8
//let sample: AudioSample = 32
//
//print("Int.min = \(Int.min)")

// Int -> Int64


// 元组类型Tuple
// 与数组不同，所有元素类型不必相同
//let error = (1, "没有权限") //(errorCode, errorMessage)
//print(error.0)
//print(error.1)

// 元组中可以为每个元素指定对应的名称
//let error = (errorCode: 1, errorMessage: "没有权限")
//print(error.errorCode)
//print(error.errorMessage)

// 无论是可变元组（let）还是不可变元组（var），元组在定义后都不可添加或删除元素
// 可以对可变元组的元素进行修改，但不能改变其类型
//var error = (errorCode: 1, errorMessage: "没有权限")
//error.errorCode = 2
//print(error)
//error.errorMessage = 3 // Cannot assign value of type 'Int' to type 'String'

// 如果元素类型为Any，可用其他类型对其赋值
//var error:(errorCode:Int, errorMessage:Any) = (errorCode: 1, errorMessage: "没有权限")
//error.errorMessage = 2
//print(error)

// 元组分解
// 如果只需要其中一部分数据，不需要的可以用下划线（_）代替
//let error = (1, "没有权限")
//let (errorCode, errorMessage) = error
//print(errorCode)
//print(errorMessage)

//let (_ , errorMessage) = error
//print(errorMessage)

// 元组也可作为函数返回值，可用于返回多个值，返回值得Tuple可在函数定义的返回值类型部分被命名
//func writeFile(content: String) -> (errorCode: Int, errorMessage: String) {
//    return (1, "没有权限")
//}
//
//let error = writeFile(content: "")
//print(error)

// Optional
// 在变量类型后加 ?
// 两重含义：1.这里有一个值，它等于x; 2.这里根本没有值
// 通过给可选变量赋值为nil，表示没有值
// Swift中，nil不是指针，它只是值缺失的一种特殊类型，任何类型的可选项都可以设置为nil，而不仅仅时对象类型
// 只有可选项可以赋值为nil
// 可选项是没法直接使用的，需要用 ! 展开之后才能使用（意思是我知道这个可选项有值）
//let str: String? = "abc"
//let count = str.count // error: 必须先展开才能访问其属性
//if str != nil {
//    let count = str!.count // 可选项展开
//    print(count)
//}
//
// 强制展开，不推荐，如果可选项为nil，出错
//let str: String? = nil
//let count = str!.count // error : EXC_BAD_INSTRUCTION
//
// Optional-绑定
// 可以使用可选项绑定来判断可选项是否包含值
//if let actualStr = str { // 首先判断str是否为nil，如果不是nil，会赋值给常量actualStr
//    let count = actualStr.count
//    print(count)
//}
//
// Optional-隐式展开
// 声明时使用 ! 而非 ？（有什么用，后面讲）
//let str: String! = "abc"
//let count = str.count
//
// Optional-可选链
// 对可选项访问时在后面加 ？
// 如果可选项不为nil，返回也是一个可选项结果，否则返回nil
//let str: String? = "abc"
//let count = str?.count // 此时count依然为一个可选项
////let lastIndex = count - 1 // error: 必须先展开才能访问其属性
//if count != nil {
//    let lastIndex = count! - 1
//    print(lastIndex)
//}

