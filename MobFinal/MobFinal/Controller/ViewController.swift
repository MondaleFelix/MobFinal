//
//  ViewController.swift
//  MobFinal
//
//  Created by Mondale on 3/3/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let userList = [
        User(firstName: "Jimi", lastName: "Hendrix", Age: 50),
        User(firstName: "Eddie", lastName: "Van Halen", Age: 45),
        User(firstName: "John", lastName: "Lennon", Age: 40),
        User(firstName: "Joan", lastName: "Jett", Age: 38),
        User(firstName: "Brian", lastName: "May", Age: 55),
        User(firstName: "Carlos", lastName: "Santana", Age: 48)
    ]
    
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .systemGray5
        configureTableView()
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 100
        tableView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let userVC = UserViewController()
        let user = userList[indexPath.row]
        let name = user.firstName + " " + user.lastName
        userVC.nameLabel.text = name
        navigationController?.pushViewController(userVC, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    
    // Returns the number of cells to display
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    // Returns the cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        let user = userList[indexPath.row]
        cell.ageLabel.text = String(user.Age)
        cell.nameLabel.text = user.firstName + " " + user.lastName
        return cell
        
    }
    
    
}
