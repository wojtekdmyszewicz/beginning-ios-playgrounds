//: Playground - noun: a place where people can play

import UIKit

let temperature = 55
switch temperature {
case 10...55:
case 55...78:
    print("Comfortable")
case 78...95:
    print("Sweaty")
default:
    print("Very uncomfortable")
}

