//
//  Person.swift
//  Homework 2.11
//
//  Created by Ivan on 29.10.2024.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let eMail: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

final class DataStore {
    
    let names = [
            "John",
            "Sharon",
            "Aaron",
            "Steven",
            "Nicola",
            "Ted",
            "Bruce",
            "Carl",
            "Allan"
        ]
    
    let surnames = [
        "Murphy",
        "Jankin",
        "Williams",
        "Black",
        "Robertson",
        "Butler",
        "Isaacson",
        "Smith",
        "Pennyworth"
    ]
    
    let phones = [
        "645898473",
        "612345678",
        "687654321",
        "611122233",
        "644455566",
        "677788899",
        "699911133",
        "633312144",
        "677777777"
    ]
    
    let eMails = [
        "aaaa@mail.ru",
        "bbbb@mail.ru",
        "cccc@mail.ru",
        "dddd@mail.ru",
        "eeee@mail.ru",
        "ffff@mail.ru",
        "gggg@mail.ru",
        "hhhh@mail.ru",
        "iiii@mail.ru"
    ]
    
     func getPerson() -> Person {
         let name = names.randomElement() ?? ""
         let surname = surnames.randomElement() ?? ""
         let eMail = eMails.randomElement() ?? ""
         let phone = phones.randomElement() ?? ""
         
         return Person(name: name, surname: surname, phone: phone, eMail: eMail)
    }
}
