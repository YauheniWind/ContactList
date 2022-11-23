//
//  Person.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 21/11/2022.
//

import Foundation

let dataManager = DataManager()

struct Person {
  let name: String
  let surname: String
  let email: String
  let number: String
  let fullName: String
}

extension Person {
  
  static func getPerson() -> [Person] {
    var personList: [Person] = []
    let randomNames = dataManager.names.shuffled()
    let randomSurnames = dataManager.surnames.shuffled()
    let randomEmails = dataManager.emails.shuffled()
    let randomNumbers = dataManager.numbers.shuffled()
    
    for list in 0...randomNames.count - 1 {
      personList.append(Person(name: randomNames[list],
                               surname: randomSurnames[list],
                               email: randomEmails[list],
                               number: randomNumbers[list],
                               fullName: "\(randomNames[list]) \(randomSurnames[list])"))
    }
    return personList
  }
}
