//
//  ContactListViewController.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import UIKit

class ContactListView: UIViewController {
    private static let cellReusableIdentifier = "clientCellReusableIdentifier"
    private var viewModel: ContactListViewModel!
    
    let clientTableView: UITableView = {
        let view = UITableView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ContactListViewModel()
        
        self.view.backgroundColor = .white
        clientTableView.dataSource = self
        clientTableView.delegate = self
        
        view.addSubview(clientTableView)
        let item =  UIBarButtonItem(systemItem: UIBarButtonItem.SystemItem.add)
        item.action = #selector(addNewClient(_:))
        item.target = self
        self.navigationItem.setRightBarButton(item, animated: true)
        
        self.navigationItem.title = "Clientes"
        // Setup constraints.
        setupConstraints()
    }
    
    @objc func addNewClient(_ sender: UIButton) {
        navigationController?.pushViewController(ContactDetailsView(), animated: true)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            clientTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: self.view.bounds.size.height * 0.12),
            clientTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            clientTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            clientTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ContactListView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String.getLocalizable(ContactListView.self, for: "title")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: ContactListView.cellReusableIdentifier)
        if (cell == nil) {
            cell = UITableViewCell(style:UITableViewCell.CellStyle.subtitle, reuseIdentifier:ContactListView.cellReusableIdentifier)
         }
         cell!.textLabel!.text = "Hello World"
        return cell!
    }
}
