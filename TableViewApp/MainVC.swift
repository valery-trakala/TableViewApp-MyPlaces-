//
//  ViewController.swift
//  TableViewApp
//
//  Created by Valery Trakala on 01/11/2023.
//

import UIKit

class MainVC: UITableViewController {
    let cellHeight = 85
    
    let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "XO", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "LoveLife", "Шок", "Бочка"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let restaurantName = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantName)
        cell.textLabel?.text = restaurantName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return CGFloat(cellHeight)
    }
}

