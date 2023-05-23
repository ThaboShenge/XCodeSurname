//
//  ViewController.swift
//  tableSurnames
//
//  Created by DA MAC M1 146 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var surname = ["Kubheka ", "Khathide ", "Buthelezi ", "Shenge ", "Mahlangu ", "Toyi ", "Sekhukhune ", "Morapeli ", "Kubheka ", "Khathide ", "Buthelezi ", "Shenge ", "Mahlangu ", "Toyi ", "Sekhukhune ", "Morapeli "]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return surname.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = surname[indexPath.row]
        return cell
    }
    
    
}
