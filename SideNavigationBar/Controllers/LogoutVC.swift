//
//  LogoutVC.swift
//  sideMenu
//
//  Created by Abhisek Prusty on 21/02/2026.
//

import UIKit

class LogoutVC: UIViewController {
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
            Are you sure you want to logout?
            
            Logging out will end your current session and you will need to login again to access your account.
            """
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Logout"
        self.view.backgroundColor = .black
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(descriptionLabel)
        view.addSubview(logoutButton)
        
        NSLayoutConstraint.activate([
            
            descriptionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            logoutButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            logoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        logoutButton.addTarget(self, action: #selector(handleLogout), for: .touchUpInside)
    }
    
    @objc private func handleLogout() {
        print("User Logged Out")
        
        // Example:
        // UserDefaults.standard.removeObject(forKey: "userToken")
        // navigationController?.popToRootViewController(animated: true)
    }
}
