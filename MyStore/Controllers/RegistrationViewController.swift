//
//  RegistrationViewController.swift
//  SlideOutNavigation
//
//  Created by Sergiy Sachuk on 4/3/18.
//  Copyright © 2018 James Frost. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    //  enum customerType: String {
    //    case naturalPerson = "Как частное лицо"
    //    case serviceCompany = "Как лицо, предоставляющее услуги"
    //    case otherCompanies = "Как КОМПАНИИ/ФИРМЫ/FIE"
    //
    //    var description: String {
    //      return self.rawValue
    //    }
    //  }
    
    
    enum CellIdentifiers {
        static let RegistrationCell = "RegistrationCell"
    }
    
    let customerTypes = ["Как частное лицо", "Как лицо, предоставляющее услуги", "Как КОМПАНИИ/ФИРМЫ/FIE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        customizeNavigationBarView(vc: self)
    }
    
    func customizeNavigationBarView(vc: UIViewController){
        
        vc.navigationItem.setHidesBackButton(true, animated:true)
        
        let menu = UIBarButtonItem(image: UIImage(named: "ic_menu_new"), style: .plain, target: nil, action: nil)
        let title = UIBarButtonItem(title: "Регистрация", style: .plain, target: nil, action: nil)
        let search = UIBarButtonItem(barButtonSystemItem: .search, target: nil, action: nil)
        let cart = UIBarButtonItem(image: UIImage(named: "ic_cart_new"), style: .plain , target: nil, action: nil)
        
        vc.navigationItem.rightBarButtonItems = [search, cart]
        vc.navigationItem.leftBarButtonItems = [menu, title]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
    }
}


extension RegistrationViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.RegistrationCell, for: indexPath) as? RegistrationCell else { return UITableViewCell() }
        
        cell.label.text = customerTypes[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sender = customerTypes[indexPath.row]
        
        //performSegue(withIdentifier: REGISTER_TO_HOME, sender: sender)
        
        let containerViewController = ContainerViewController()
        present(containerViewController, animated: true, completion: nil)
    }
}



