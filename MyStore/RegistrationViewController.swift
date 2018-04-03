//
//  RegistrationViewController.swift
//  SlideOutNavigation
//
//  Created by Sergiy Sachuk on 4/3/18.
//  Copyright © 2018 James Frost. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
  
  enum customerType: String {
    case naturalPerson = "Как частное лицо"
    case serviceCompany = "Как лицо, предоставляющее услуги"
    case otherCompanies = "Как КОМПАНИИ/ФИРМЫ/FIE"
    
    var description: String {
      return self.rawValue
    }
  }
  
  enum CellIdentifiers {
    static let RegistrationCell = "RegistrationCell"
  }
  
  let customerTypes = ["Как частное лицо", "Как лицо, предоставляющее услуги", "Как КОМПАНИИ/ФИРМЫ/FIE"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension RegistrationViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.RegistrationCell, for: indexPath) as? RegistrationCell else { return UITableViewCell() }
    
    cell.label.text = customerTypes[indexPath.row]
    return cell
  }
}



