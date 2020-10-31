//
//  main.swift
//  Hello
//
//  Created by Khanh, Vo Tran Nhut on 10/28/20.
//

import Foundation
//Week1
//Q3
func sockPairs(_ str: String){
    var result = 0
    let countLetter = str.reduce(into: [:], {(result, ele) in return result[ele, default: 0] += 1})
    for value in countLetter.values{
        result += value / 2
    }
    print(result)
}

sockPairs("BAA")

//Q4
func sortNum(_ listNum: String){
    let tmpArray =  listNum.components(separatedBy: ",")
    print(tmpArray.sorted().joined(separator: " "))
}
sortNum("1,3,2")

//Q5
func printContactList(_ listCont: String){
    let tmpArray = listCont.components(separatedBy: ", ")
    var contactList: Dictionary<String, String> = [String:String]()
    for contact in tmpArray{
        let tmpContact = contact.components(separatedBy: ":")
        contactList[tmpContact[0]] = tmpContact[1]
    }
    contactList.sorted(by: {(a, b)->Bool in return a.value < b.value}).forEach({(a) in print(a.key + ": " + a.value)})
}


printContactList("Phone1:c, Phone2:b, Phone3:d, Phone4:a")
