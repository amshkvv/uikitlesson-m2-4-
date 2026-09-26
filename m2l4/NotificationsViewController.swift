//
//  NotificationsViewController.swift
//  m2l4
//
//  Created by AndreyM on 25.09.2026.
//

import UIKit

class NotificationsViewController: UIViewController {
    
    //backbtn
    private lazy var backAction : UIAction = UIAction { [weak self] _ in
        let back = ViewController()
        
        self?.navigationController?.popViewController(animated: true)
        
    }
    
    private lazy var backBtn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .medium)
        $0.setImage(UIImage(systemName: "arrow.left", withConfiguration: config), for: .normal)
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .white
        $0.tintColor = .appColorBlackExt

        return $0
    }(UIButton(primaryAction: backAction))

    private lazy var noNitificationsLabel : UILabel = {
        $0.text = "No notifications"
        $0.textAlignment = .center
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .textColorLight
        return $0
    }(UILabel())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Notifications"
        
        view.addSubview(noNitificationsLabel)
        view.addSubview(backBtn)
        
        
        
        NSLayoutConstraint.activate([
            noNitificationsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            noNitificationsLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            backBtn.heightAnchor.constraint(equalToConstant: 40),
            backBtn.widthAnchor.constraint(equalToConstant: 40),
            
        ])
    }
    
    deinit{
        print("class deinit")
    }

}
