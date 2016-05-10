//
//  main.swift
//  OptionnalSwift
//
//  Created by Weerapong Buarungsawat on 5/9/2559 BE.
//  Copyright © 2559 Weerapong Buarungsawat. All rights reserved.
//

import Foundation

var myTestString = "sdfasdf"
var myInt:Int? = Int(myTestString)

if myInt != nil
{
    print("ค่านี่เป็นตัวเลข")
}
else
{
    print("ค่านี่ไม่เป็นตัวเลข")
}

// Range Oparetor ใช้ ... ในการกำหนดช่วงของตัวเลข เช่น 1...10 คือ 1 ถึง 10
// .. คือ เปรียบเทียบ ช่วง เช่น 1..<5 คือ 1 ถึง 4
// ตัวอย่าง .. -> 1..<=5


let size = "s"
switch size{
case "s":
    print("Small size")
case "m":
    print("Medium size")
case "l":
    print("Large size")
default:
    print("Unknow size")
}

//switch and Tuple
var testPosition:(Int,Int) = (0,6)

switch testPosition{
case(0,0):
    print("center")
case(_,0):
    print("x axis")
case(0,_):
    print("y axis")
default:
    print("another point")
}

// switch where
var testNumber:Int = 10
switch testNumber{
case let x where x < 0:
    print("ค่า x = \(x)")
case let x where x == 0:
    print("ค่า x = \(x)")
case let x where x > 0:
    print("ค่า x = \(x)")
default:
    print("default")
}

//function no parameter no return
func hello(){
    print("hello swift")
}

//function have parameter no return
//ถ้าfunction มีชื่อเดียวกัน แต่ พารามิเตอร์ต่างกัน สามารถสร้างได้ตามหลักการ override method
func hello(text:String){
    print("message = "+text)
}
//function have parameter have return
func cricle(readius:Float)->Float{
    return 3.14 * readius * readius
}

hello()
hello("hi")

print("cricle = \(cricle(4))")

//nested function
func newPosition(moveRight test:Bool,xPosition:Int)->Int{
    func goRight(xPosition:Int)->Int{
        return xPosition+1
    }
    func goLeft(xPosition:Int)->Int{
        return xPosition-1
    }
    
    let dicistion:(Int)->Int = test ? goRight : goLeft
    return dicistion(xPosition)
}


var position = newPosition(moveRight: true, xPosition: 15)

print("position = \(position)")


var getgithub:String = "start gits"


















