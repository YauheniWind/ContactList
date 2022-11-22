//
//  AllInfoTableViewController.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 22/11/2022.
//

import UIKit

class AllInfoTableViewController: UITableViewController {
  
     let person = Person.getPerson()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      return person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      2
    }
  
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      person[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let personList = person[indexPath.section]
        var content = cell.defaultContentConfiguration()
      
        switch indexPath.row {
        case 0:
          content.text = personList.number
        case 1:
          content.text = personList.email
        default:
          print("Contact")
        }
      
      
        cell.contentConfiguration = content
           

        return cell
    }

}
