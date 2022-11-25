//
//  Person.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 21/11/2022.
//

import Foundation

struct Person {
  let name: String
  let surname: String
  let email: String
  let number: String
  let fullName: String
}

extension Person {
  
  static func getPersonList() -> [Person] {
    
    var personList: [Person] = []
    
    let randomNames = DataManager.shered.names.shuffled()
    let randomSurnames = DataManager.shered.surnames.shuffled()
    let randomEmails = DataManager.shered.emails.shuffled()
    let randomNumbers = DataManager.shered.numbers.shuffled()
    
    for list in 0..<randomNames.count {
      personList.append(Person(name: randomNames[list],
                               surname: randomSurnames[list],
                               email: randomEmails[list],
                               number: randomNumbers[list],
                               fullName: "\(randomNames[list]) \(randomSurnames[list])"))
    }
    return personList
  }
}
