import UIKit

// swift中赋值运算符无返回值，而OC/C中赋值运算返回值为该值

//合并空值运算符 (为了Optional)
// a ?? b  a为一可选项，含义：如果可选项a有值则展开，如果a为nil，则表达式返回b的值 (a必须为一可选项，b与a的数值类型相同)
// 合并空值运算符可用三目运算符表示为：a != nil ? a! : b
// 例子：
//func addTwoNum(num1: Int?, num2: Int?) -> Int {
//    // 两种实现方式
//    // 1.
//    if num1 != nil {
//        if num2 != nil {
//            return num1! + num2!
//        }
//        return num1!
//    } else if num2 != nil {
//        return num2!
//    } else {
//        return 0
//    }
//
//    // 2.使用合并空值运算符
//    return (num1 ?? 0) + (num2 ?? 0)
//}
// 注意：合并空值运算符是短路的，即如果??前不为nil，则不会执行??后的表达式

// 区间运算符
// 1.闭区间运算符 a...b 表示a到b的一组范围，包含a和b
//for index in 1...5 {
//    print(index)
//}

// 2.半开区间运算符 a..<b 左闭右开
//for index in 1..<5 {
//    print(index)
//}

let arr = [1, 2, 3, 4]
//for index in 0..<arr.count {
//    print(arr[index])
//}

// 3.单侧区间 可省略一侧的值 让区间朝着一个方向尽可能的远
//for value in arr[...2] { // 0 1 2
//    print(value)
//}
//print("-----------")
//for value in arr[3...] { // 3 -> end
//    print(value)
//}

//for value in arr[..<2] {
//    print(value)
//}

//let range = ...5
//range.contains(1)
//range.contains(6)
//range.contains(-5)
//// 不能遍历省略了第一个值的单侧区间，因为不知道从哪里开始

var welcome = "hello, world"
//let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex
//welcome.removeSubrange(range)
//print(welcome)

// 倒序索引
//for i in (0...10).reversed() {
//    print(i)
//}

// 区间运算符可作用在Comparable类型上
let interval = "a"..."z"
for c in welcome {
    if !interval.contains(String(c)) {
        print("\(c)不是小写字母")
    }
}
