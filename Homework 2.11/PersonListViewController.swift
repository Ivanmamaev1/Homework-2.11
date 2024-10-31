//
//  PersonListViewController.swift
//  Homework 2.11
//
//  Created by Ivan on 29.10.2024.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    // MARK: - Public Properties
    let dataStore = DataStore()
    var people = [Person]()
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<10 {
            people.append(dataStore.getPerson())
        }
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = people[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let infoVC = segue.destination as? PersonInfoViewController
        infoVC?.person = people[indexPath.row]
    }
}
