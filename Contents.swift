//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//class & struct
//class :- class is referance type , like u have google spred sheet you are giving access to ur friend to do same chnages in it he can able to make changes in that spread sheet
//struct :-  value type


//referance type e.g.
class mackBook{
    
    var year: Int
    var color: String
    init(year:Int , color:String){
        self.year = year
        self.color = color
    }
}
let mymacbook = mackBook(year: 2018, color: "iOS Design gray")
let newmacbook = mymacbook
let oldmacbook = newmacbook.color = "iOS Design red"
print(mymacbook.color) // here we chnage the color newmacbook which affects the mymacbook color it is call referance type which chnage data of main class



//value type e.g.
struct iPhone {
    var year: Int
    var color: String
}
//in struct no need to initialise it , it will automatically get initialised
let myiphone = iPhone(year: 7, color: "red")
var newiphone = myiphone
newiphone.color = "pink"
print(myiphone.color)
print(newiphone.color)
//in struct it will create new object and change its vlaue its not affects on old one object



//if let use
var optionalNumber: Int? // we declare veriable as optional using ? i.e. nil , for checking nil  value we use if let
print(optionalNumber) // nil
//passing nil value to optional
if let number = optionalNumber{
    print("it has value i.e \(number)")
}else{
    print("it dont have value")
}


var optionalNumber1: Int? // we declare veriable as optional using ? i.e. nil
print(optionalNumber1) // nil
optionalNumber1 = 20
//passing value to optional
if let number = optionalNumber1{
    print("it has value i.e \(number)")
}else{
    print("it dont have value")
}


//Guard
//guard is use to checking optional value & if it has nil value it wont exicute function wholely if anything come after checking that value is nil it will not exicute remain block of that fuction it will throw out that function


func triplingNumner(number: Int?) {
    
    guard let number = number else{
        print("Exiting Function")
        return
    }
    print("tripling number \(number * 3)")
}

triplingNumner(number: optionalNumber) // here we pass nil value to function bcz of guard if it got nil value it will not exicute that function remian block

triplingNumner(number: optionalNumber1) // here we pass value to that function it check the value is optional or nil if not it exicute remain block of that function


//Filter, map 


struct Device{
    var type: String
    var price: Float
    var color: String
}

var mymacpro = Device(type: "iMac Pro", price: 155.65, color: "red")
var myiPhone6Pluse = Device(type: "iPhone", price: 2234.76, color: "gray")
var myiPhone7 = Device(type: "iPhone", price: 2345.67, color: "black")
var myiPad = Device(type: "iPad", price: 2345.67, color: "yellow")

let myDevice = [mymacpro,myiPhone6Pluse,myiPhone7,myiPad]

//Filter : using filter we can get specifice type data from our array here we fetch iPhone type data from device array
let iphone = myDevice.filter({ return $0.type == "iPhone"})
print(iphone)

//map : using map u can update data of array , add, update , multiply that data
let canedianPrice : [Float] = myDevice.map({ return $0.price * 1.3})
print(canedianPrice)
//in this e.g. we multiplay price by 1.3




