//
//  MoreDetailsViewController.swift
//  m2l4
//
//  Created by AndreyM on 25.09.2026.
//

import UIKit

class MoreDetailsViewController: UIViewController {

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
    
    //Title label
    
    private lazy var titleLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Mountains"
        $0.textAlignment = .center
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        return $0
    }(UILabel())
    
    //view group
    private lazy var popularTripView : UIView = {
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 30
        $0.layer.shadowColor = UIColor.gray.cgColor
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10
        return $0
    }(UIView())
    
    private lazy var tripIamgeView : UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .popTrip
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    private lazy var titleTextOnView : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Greenland"
        $0.font = .systemFont(ofSize: 18, weight: .bold)
        return $0
    }(UILabel())
    private lazy var contentTextOnView : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Greenland, North"
        $0.font = .systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    private lazy var details : UIAction = UIAction { [weak self]_ in
        let details = DetailsViewController()
        
        self?.navigationController?.pushViewController(details, animated: true)
    }
    
    private lazy var rightBTn : UIButton = {
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .medium)
        $0.setImage(UIImage(systemName: "arrow.right", withConfiguration: config), for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.tintColor = .black
        return $0
    }(UIButton(primaryAction: details))
    
    @objc
    func setDetailsView (){
        let details = DetailsViewController()
        
        self.navigationController?.pushViewController(details, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(backBtn)
        view.addSubview(titleLabel)
        
        //view group
        view.addSubview(popularTripView)
        view.addSubview(tripIamgeView)
        view.addSubview(titleTextOnView)
        view.addSubview(contentTextOnView)
        view.addSubview(rightBTn)
        
        
        
        NSLayoutConstraint.activate([
            //back
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            backBtn.heightAnchor.constraint(equalToConstant: 40),
            backBtn.widthAnchor.constraint(equalToConstant: 40),
            
            //title
            titleLabel.leadingAnchor.constraint(equalTo: backBtn.trailingAnchor, constant: 75),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            //view group
            //View trip
            popularTripView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            popularTripView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            popularTripView.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 30),
            popularTripView.heightAnchor.constraint(equalToConstant: 230),
            //view image
            tripIamgeView.leadingAnchor.constraint(equalTo: popularTripView.leadingAnchor, constant: 10),
            tripIamgeView.trailingAnchor.constraint(equalTo: popularTripView.trailingAnchor, constant: -10),
            tripIamgeView.topAnchor.constraint(equalTo: popularTripView.topAnchor, constant: 10),
            tripIamgeView.heightAnchor.constraint(equalToConstant: 140),
            //title text view
            titleTextOnView.leadingAnchor.constraint(equalTo: popularTripView.leadingAnchor, constant: 20),
            titleTextOnView.topAnchor.constraint(equalTo: tripIamgeView.bottomAnchor, constant: 15),
            //content text view
            contentTextOnView.leadingAnchor.constraint(equalTo: popularTripView.leadingAnchor, constant: 20),
            contentTextOnView.topAnchor.constraint(equalTo: titleTextOnView.bottomAnchor, constant: 1),
            //arrow
            rightBTn.topAnchor.constraint(equalTo: tripIamgeView.bottomAnchor, constant: 15),
            rightBTn.trailingAnchor.constraint(equalTo: popularTripView.trailingAnchor, constant: -10),
            rightBTn.heightAnchor.constraint(equalToConstant: 25),
            rightBTn.widthAnchor.constraint(equalToConstant: 25),
            
        ])
        
        
    }
    
    deinit{
        print("class deinit")
    }

}
