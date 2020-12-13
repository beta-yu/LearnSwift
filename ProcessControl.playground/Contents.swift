import UIKit

// 循环控制
let dict = ["One" : 1, "Two" : 2]

//for (string, dight) in dict {
//    print(string, dight);
//}

for kv in dict {
//    print(kv.0, kv.1)
    print(kv.key, kv.value)
}

// [0, 50) stride = 5
for i in stride(from: 0, to: 50, by: 5) {
    print(i)
}

// [0, 50] stride = 5
for i in stride(from: 0, through: 50, by: 5) {
    print(i)
}

let base = 2
let power = 5
var result = 1
for _ in 1...5 { // 2^5 不关心当前迭代次数可以_代替
    result *= 2
}

print (result)


var count = 0

repeat { // same to 'do while'
    print(count)
    count += 1
} while (count < 5)

// Switch
//
// Swift中如果switch代码段不完整（没有default分支），则会报错，不能被执行
// Swift中switch执行时默认不会从一个case贯穿到下一个case的，会在执行完匹配到的第一个case后退出，不需要显式的break语句
// switch的每一个case必须至少包含一条可执行语句
// 如果需要多个值采用相同的处理方式，可在一个case中使用逗号隔开（可多行），如：
// case 'a', 'A':
//
// case值可使用区间匹配，如：
// case 1...5:
//
// 可以对case的值进行绑定
//
// switch case可以使用where字句来检查是否符合特定约束
// case let(x, y) where x == y:

let char: Character = "A"

switch char {
    case "a", "A":
        print("The first letter of alphabet")
    case "z":
        print("The last letter of alphabet")
    default:
        print("Other")
}

let count = 62
var naturalCount: String

switch count {
case 0:
    naturalCount = "None"
case 1..<12:
    naturalCount = "a few"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

print(naturalCount)


let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("point at origin")
case (_, 0):
    print("point at x-axis")
case (0, _):
    print("point at y-axis")
case (-2...2, -2...2):
    print("point in box")
default:
    print("point at other place")
}

let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("point at origin")
case (let x, 0):
    print("point at x-axis, distance is \(x)")
case (0, let y):
    print("point at y-axis, distance is \(y)")
case let(x, y) where x==y:
    print("x=y")
case (-2...2, -2...2):
    print("point in box")
default:
    print("point at other place")
}

let somePoint = (1, 0)
switch somePoint {
case (0, 0):
    print("point at origin")
case (let distance, 0), (0, let distance):
    print("point in axis, diatance is \(distance)")
default:
    print("point at other place")
}

// 控制转移
//
//fallthrough可以使Swift中的switch和c中switch相同具有隐式贯穿

let char: Character = "A"
switch char {
case "A":
    fallthrough
case "a":
    print("The first letter of alphabet")
case "z":
    print("The last letter of alphabet")
default:
    print("Other")
}

//语句标签
var number = 10
whileLoop: while number > 0 {
    switch number {
    case 9:
        print("9")
    case 10:
        var sum = 0
        for index in 1...10 {
            sum += index
            if index == 9 {
                print(sum)
                break whileLoop //直接跳转出最外层while循环
            }
        }
    default:
        break
    }
    number -= 1
}

// guard

func isIpAddress(ipString: String) -> (Int, String) {
    let components = ipString.split(separator: ".")
    
    guard components.count == 4 else {
        return (100, "ip地址必须有4部分") // 条件不成立时执行
    }
    // 上面条件成立继续向下执行
    guard let first = Int(components[0]), first >= 0 && first <= 255 else {
        return (1, "ip地址第1部分不对")
    }
    
    guard let second = Int(components[1]), second >= 0 && second <= 255 else {
        return (2, "ip地址第2部分不对")
    }
    
    guard let third = Int(components[2]), third >= 0 && third <= 255 else {
        return (3, "ip地址第3部分不对")
    }
    
    guard let fourth = Int(components[3]), fourth >= 0 && fourth <= 255 else {
        return (4, "ip地址第4部分不对")
    }
    
    return (0, "ip地址合法")
}

print(isIpAddress(ipString: "127.0.0.1"))
