import UIKit

// 字符串初始化
// 1.使用字面量初始化  字面量 -> 使用（"）包裹的文本
//let emptyString = ""
// 2.使用初始化器初始化
//let emptyString = String()
//if emptyString.isEmpty {
//    print("emptyString is empty.")
//}

//let str = "Hello, world" // 单行字面量
//let wwdc = """
//It’s on now. Join us for a WWDC like never before — with a jam-packed, \
//all-online experience coming to you from Apple Park.
//
//And there’s still a lot more to come.
//"""
//print(wwdc)
// 在使用多行字面量时，如果不想实际换行，而在代码中换行，可在行位加上'\'
//let numbers = """
//    1
//    2
//    3
//        4
//    5
//    """
//print(numbers)
// 多行字符串每行缩进时与后一个"""看齐

// 特殊字符
// 特殊转义字符 \ -> "\\", " -> "\"" ...
// 如果在多行字符串中包含双引号("), 则不需要转义，因为多行字符串使用(""")包裹，不存在冲突
//let sparklingHeart = "\u{1F496}" // Unicode标量 \u{n} n为1~8位的16进制数，一个合法的Unicode值
//print(sparklingHeart)

// Raw String （扩展字符串分隔符）Swift5
// 在字符串字面量中放置扩展字符串分隔符在字符串中包含转义字符时，使转义字符不生效
// 使用方法：将字符串放在(")内，并在外部用(#)包裹，如
//let str = #"Line1\nLine2"#
//print(str) // Line1\nLine2
// 如果字符串中原本就包含"#时需要在外围加两个#，如：
//let str = ##"Line1"#\nLine2"##
//print(str) // Line1"#\nLine2
// 如果需要某个转义字符的效果而不要其它的效果，则使用与外围#数目相等的#在你需要转移效果的转义字符的\后，如
//let str = #"Line1\#nLine2\nLine3"#
//let str = ##"Line1"#\##nLine2"##  // \与n之间加了两个#
//print(str)

// 字符串的常见操作
// 在Swift中，字符串是值类型，对String类型变量赋值，传递String类型参数时是将其内容拷贝过去，而不是指针的拷贝动作
// 但是编译器优化了拷贝的次数，只会在确实需要时进行拷贝
//var str = "abc"
//var str1 = str
//print(str == str1) // true
//str1 += "def"
//print(str)
//print(str1)
//print(str == str1) // false

// 操作字符串中的字符
// for in
//for character in "abc" {
//    print(character)
//}
// 使用索引

// 字符串拼接
// +, +=, append()

// 字符串插值
// 通过混合常量、变量、字面量和表达式的字符串字面量构造新的字符串的方法，类似于NSString的stringWithFormat方法
// 插值方法：\(需要插入的值)

// 字符串索引
// startIndex表示第一个字符的索引，endIndex表示最后一个字符的后一个位置的索引
//let greeting = "hello, world"
//print(greeting[greeting.startIndex]) // h
// 不可以直接使用数据代替索引，因为String的索引实际为Struct类型而不是Int
//print(greeting[1]) // 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead.
//print(greeting[greeting.index(after: greeting.startIndex)]) // 访问startIndex的后一个
//print(greeting[greeting.index(before: greeting.endIndex)]) // 访问endIndex的前一个
//let index = greeting.index(greeting.startIndex, offsetBy: 7) // 从给定索引开始向后偏移7位
//let index = greeting.index(greeting.endIndex, offsetBy: -7) // 亦可向前偏移
//print(greeting[index])
//print(greeting.indices)

// 插入字符（串）
//var welcome = "hello"
//welcome.insert("!", at: welcome.endIndex)
//print(welcome)
//welcome.insert(contentsOf: " world", at: welcome.index(before: welcome.endIndex))
//print(welcome)

// 删除字符（串）
//welcome.remove(at: welcome.index(before: welcome.endIndex))
//print(welcome)
//let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex  // 区间开始..<区间结尾
//welcome.removeSubrange(range)
//print(welcome)

// 子字符串
// 使用索引或prefix(_:)等方法得到的字符串时Substring类型而非String类型
// Substring用于String的大部分方法
// Substring可转为String
//let greeting = "hello, world"
//let index = greeting.firstIndex(of: ",") ?? greeting.endIndex // 如果不存在","，index == greeting.endIndex
//let beginning = greeting[..<index]
//let newString = String(beginning) // 转换
//print(newString)
// 在Substring和String发生改变，或者使用Substring构造String之前，Substring都是与String共用一部分内存的，不需要花费拷贝内存的代价
// String和Substring都遵守StringProtocol协议

// 字符串比较
var welcome = "hello, world"
var welcome1 = "hello"
print(welcome == welcome1) // or !=
print(welcome.hasPrefix("hello")) // 前缀
print(welcome.hasSuffix("world")) // 后缀
