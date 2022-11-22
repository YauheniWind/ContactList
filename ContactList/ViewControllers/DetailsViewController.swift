//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Евгений  Гравдин  on 22/11/2022.
//

import UIKit

class DetailsViewController: UIViewController {
  
  @IBOutlet weak var fullNameLabel: UILabel!
  @IBOutlet weak var phoneLabel: UILabel!
  @IBOutlet weak var emailLabel: UILabel!
  
  var personDetail: Person!
  
  override func viewDidLoad() {
        super.viewDidLoad()

    fullNameLabel.text = personDetail.fullName
    phoneLabel.text = "Phone: \(personDetail.number)"
    emailLabel.text = "Email: \(personDetail.email)"
    }
    
}
