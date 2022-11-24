//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 22/11/2022.
//

import UIKit

class TabBarViewController: UITabBarController {
  
    override func viewDidLoad() {
        super.viewDidLoad()

        sendData()
    }
    

  private func sendData() {
      guard let viewControllers = viewControllers else { return }
    
      let person = Person.getPersonList()

      for viewController in viewControllers {
        if let contactVC = viewController as? ContactListViewController {
          contactVC.personOne = person
        } else if let allInfoVC = viewController as? AllInfoTableViewController {
          allInfoVC.personTwo = person
        }
      }
  }

}
