/// Copyright (c) 2017 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit

class CenterViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak private var imageView: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var creatorLabel: UILabel!
    
    var delegate: CenterViewControllerDelegate?
    
    var categories = [String]()
    
    override func viewDidLoad() {
        categories = getCategories()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func getCategories() -> [String] {
        let category = "Category"
        var categories = [String]()
        for i in 0..<11 {
            categories.append("\(category)" + " " + "\(i)")
        }
        print(categories)
        return categories
    }
    
    // MARK: Button actions
    @IBAction func kittiesTapped(_ sender: Any) {
        delegate?.toggleLeftPanel?()
    }
    
    @IBAction func puppiesTapped(_ sender: Any) {
        delegate?.toggleRightPanel?()
    }
}

//MARK: - TableView
extension CenterViewController: UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeCell else { return UITableViewCell() }
        
        cell.label.text = categories[indexPath.row]
        return cell
    }
    
    
}

// MARK: - SidePanelViewControllerDelegate
extension CenterViewController: SidePanelViewControllerDelegate {
    
    func didSelectAnimal(_ animal: Animal) {
        imageView.image = animal.image
        titleLabel.text = animal.title
        creatorLabel.text = animal.creator
        
        delegate?.collapseSidePanels?()
    }
}
  
//  @IBOutlet weak private var imageView: UIImageView!
//  @IBOutlet weak private var titleLabel: UILabel!
//  @IBOutlet weak private var creatorLabel: UILabel!
//
//  var delegate: CenterViewControllerDelegate?
//
//  // MARK: Button actions
//  @IBAction func kittiesTapped(_ sender: Any) {
//    delegate?.toggleLeftPanel?()
//  }
//
//  @IBAction func puppiesTapped(_ sender: Any) {
//    delegate?.toggleRightPanel?()
//  }
//}
//
//// MARK: - SidePanelViewControllerDelegate
//extension CenterViewController: SidePanelViewControllerDelegate {
//
//  func didSelectAnimal(_ animal: Animal) {
//    imageView.image = animal.image
//    titleLabel.text = animal.title
//    creatorLabel.text = animal.creator
//
//    delegate?.collapseSidePanels?()
//  }
//}

