//
//  ViewController.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 23/10/22.
//

import Foundation
import UIKit


class ImperativeView: UIViewController, UITableViewDataSource {
    
    private var tableView: UITableView!
    
    var persons: [Person] = [Person(name: "Swift"), Person(name: "Kotlin")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = UITableView()
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        let topAndBottomMargens = CGFloat(16)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: topAndBottomMargens),
            tableView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PersonTableViewCell
        personCell.textLabel?.textColor = .gray
        personCell.textLabel?.text = persons[indexPath.row].name
        return personCell
    }
    
}

class PersonTableViewCell : UITableViewCell {

    //Do whatever you want as exta customization
}

