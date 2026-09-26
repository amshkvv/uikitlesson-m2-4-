//
//  DetailsViewController.swift
//  m2l4
//
//  Created by AndreyM on 25.09.2026.
//

import UIKit

class DetailsViewController: UIViewController {

    //view group
    //view
    private lazy var GreenlandView : UIView = {
        $0.backgroundColor = .white
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 30
        $0.layer.shadowColor = UIColor.gray.cgColor
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10
        return $0
    }(UIView())
    //image view
    private lazy var GreenlandImage : UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .popTrip
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.layer.shadowColor = UIColor.gray.cgColor
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10
        return $0
    }(UIImageView())
    //button back
    private lazy var backAction : UIAction = UIAction { [weak self] _ in
        let back = ViewController()
        
        self?.navigationController?.popViewController(animated: true)
    }
    
    private lazy var backBtn : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .medium)
        $0.setImage(UIImage(systemName: "arrow.left", withConfiguration: config), for: .normal)
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .white
        $0.tintColor = .appColorBlackExt
        return $0
    }(UIButton(primaryAction: backAction))
    //title label on view
    private lazy var GreenlandTitleView : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Greenland"
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .white
        $0.textAlignment = .left
        return $0
    }(UILabel())
    //content label on view
    private lazy var GreenlandContentVIew: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Greenland, North"
        $0.font = .systemFont(ofSize: 18)
        $0.textColor = .white
        $0.textAlignment = .left
        return $0
    }(UILabel())
    
    //next
    //title text
    private lazy var titltOverview: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Overview"
        $0.textAlignment = .left
        $0.font = .systemFont(ofSize: 22, weight: .bold)
        return $0
    }(UILabel())
    //content text
    private lazy var contentOverview : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non"
        $0.textAlignment = .left
        $0.textColor = .textColorLight
        $0.font = .systemFont(ofSize: 16)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var bookNowBtn : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Book now", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .appColorBlackExt
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(GreenlandView)
        view.addSubview(GreenlandImage)
        view.addSubview(backBtn)
        view.addSubview(GreenlandTitleView)
        view.addSubview(GreenlandContentVIew)
        
        view.addSubview(titltOverview)
        view.addSubview(contentOverview)
        view.addSubview(bookNowBtn)
        
        NSLayoutConstraint.activate([
            //view group
            //view
            GreenlandView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            GreenlandView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            GreenlandView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            GreenlandView.heightAnchor.constraint(equalToConstant: 320),
            //image
            GreenlandImage.leadingAnchor.constraint(equalTo: GreenlandView.leadingAnchor, constant: 0),
            GreenlandImage.trailingAnchor.constraint(equalTo: GreenlandView.trailingAnchor, constant: 0),
            GreenlandImage.topAnchor.constraint(equalTo: GreenlandView.topAnchor, constant: 0),
            GreenlandImage.heightAnchor.constraint(equalToConstant: 320),
            //button
            backBtn.leadingAnchor.constraint(equalTo: GreenlandView.leadingAnchor, constant: 15),
            backBtn.topAnchor.constraint(equalTo: GreenlandView.topAnchor, constant: 15),
            backBtn.heightAnchor.constraint(equalToConstant: 40),
            backBtn.widthAnchor.constraint(equalToConstant: 40),
            //content
            GreenlandContentVIew.leadingAnchor.constraint(equalTo: GreenlandView.leadingAnchor, constant: 15),
            GreenlandContentVIew.trailingAnchor.constraint(equalTo: GreenlandView.trailingAnchor, constant: -100),
            GreenlandContentVIew.bottomAnchor.constraint(equalTo: GreenlandView.bottomAnchor, constant: -15),
            //title
            GreenlandTitleView.leadingAnchor.constraint(equalTo: GreenlandView.leadingAnchor, constant: 15),
            GreenlandTitleView.trailingAnchor.constraint(equalTo: GreenlandView.trailingAnchor, constant: -100),
            GreenlandTitleView.bottomAnchor.constraint(equalTo: GreenlandContentVIew.topAnchor, constant: -5),
            
            
            //next
            //title overview
            titltOverview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titltOverview.topAnchor.constraint(equalTo: GreenlandView.bottomAnchor, constant: 30),
            
            //content overview
            contentOverview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            contentOverview.topAnchor.constraint(equalTo: titltOverview.bottomAnchor, constant: 5),
            contentOverview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            bookNowBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            bookNowBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            bookNowBtn.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            bookNowBtn.heightAnchor.constraint(equalToConstant: 60)
            
            
            
        ])
        
    }
    
    deinit{
        print("class deinit")
    }

}
