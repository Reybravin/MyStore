//
//  CosmeticsViewController.swift
//  MyStore
//
//  Created by Sergiy Sachuk on 4/7/18.
//  Copyright © 2018 Sergiy Sachuk. All rights reserved.
//

import UIKit

class CosmeticsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data = ["Волосы", "Лицо", "Тело", "Макияж", "Ногти"]
    var cellIdentifier = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? HairViewController {
            //
            vc.data = sender as? [String] ?? [String]()
        }
    }

}

extension CosmeticsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CosmeticsCell else { return UITableViewCell() }
        
        cell.label.text = ""
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sender = data[indexPath.row]
        performSegue(withIdentifier: "", sender: sender)
    }
}
