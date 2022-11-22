//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 21/11/2022.
//

import UIKit

class ContactListViewController: UITableViewController {
  
    let person = Person.getPerson()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      return person.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "showMore", for: indexPath)
        
        let personList = person[indexPath.section]
      
        var content = currentCell.defaultContentConfiguration()
      
        content.text = personList.fullName
      
        currentCell.contentConfiguration = content
             

        return currentCell
    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      guard let indexPath = tableView.indexPathForSelectedRow else { return }
      guard let detailVC = segue.destination as? DetailsViewController else { return }
      detailVC.person = person[indexPath.section]
      
    }

}
