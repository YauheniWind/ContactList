//
//  AllInfoTableViewController.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 22/11/2022.
//

import UIKit

class AllInfoTableViewController: UITableViewController {

     var personTwo: [Person]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      personTwo.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      personTwo[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)
        let personList = personTwo[indexPath.section]
        var content = cell.defaultContentConfiguration()
      
        switch indexPath.row {
        case 0:
          content.text = personList.number
        default:
          content.text = personList.email
        }


        cell.contentConfiguration = content
           

        return cell
    }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }

}
