//
//  PopularCategoryViewController.swift
//  m2l4
//
//  Created by AndreyM on 26.09.2026.
//

import UIKit

class PopularCategoryViewController: UIViewController {

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
    
    //view group
    private lazy var popularCategoryView : UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.shadowColor = UIColor.gray.cgColor
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 30
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10
        return $0
    }(UIView())
    
    //image on view
    private lazy var popularCategoryImageView : UIImageView = {
        $0.image = .popularCategory
        $0.translatesAutoresizingMaskIntoConstraints = false
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
    
    private lazy var moreAction : UIAction = UIAction { [weak self] _ in
        let moreDetails = MoreDetailsViewController()
        
        self?.navigationController?.pushViewController(moreDetails, animated: true)
        
    }
    
    private lazy var arrowBtnPopularCategory : UIButton = {
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .medium)
        $0.setImage(UIImage(systemName: "arrow.right", withConfiguration: config), for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.tintColor = .black
        return $0
    }(UIButton(primaryAction: moreAction))
    
    @objc
    func setMoreDetailsView (){
        let moreDetails = MoreDetailsViewController()
        
        self.navigationController?.pushViewController(moreDetails, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(popularCategoryView)
        view.addSubview(popularCategoryImageView)
        view.addSubview(titleTextOnView)
        view.addSubview(contentTextOnView)
        view.addSubview(arrowBtnPopularCategory)
        view.addSubview(backBtn)
        
        NSLayoutConstraint.activate([
            //backbtn
            backBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            backBtn.heightAnchor.constraint(equalToConstant: 40),
            backBtn.widthAnchor.constraint(equalToConstant: 40),
            //view group
            //view
            popularCategoryView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            popularCategoryView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            popularCategoryView.heightAnchor.constraint(equalToConstant: 110),
            popularCategoryView.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 30),
            //image
            popularCategoryImageView.leadingAnchor.constraint(equalTo: popularCategoryView.leadingAnchor, constant: 10),
            popularCategoryImageView.topAnchor.constraint(equalTo: popularCategoryView.topAnchor, constant: 10),
            popularCategoryImageView.heightAnchor.constraint(equalToConstant: 90),
            popularCategoryImageView.widthAnchor.constraint(equalToConstant: 90),
            //title
            titleTextOnView.leadingAnchor.constraint(equalTo: popularCategoryImageView.trailingAnchor, constant: 10),
            titleTextOnView.topAnchor.constraint(equalTo: popularCategoryView.topAnchor, constant: 20),
            //content
            contentTextOnView.leadingAnchor.constraint(equalTo: popularCategoryImageView.trailingAnchor, constant: 10),
            contentTextOnView.topAnchor.constraint(equalTo: titleTextOnView.bottomAnchor, constant: 5),
            //button
            arrowBtnPopularCategory.trailingAnchor.constraint(equalTo: popularCategoryView.trailingAnchor, constant: -10),
            arrowBtnPopularCategory.topAnchor.constraint(equalTo: popularCategoryView.topAnchor, constant: 20),
            arrowBtnPopularCategory.heightAnchor.constraint(equalToConstant: 25),
            arrowBtnPopularCategory.widthAnchor.constraint(equalToConstant: 25),
        ])
        
    }

    deinit{
        print("class deinit")
    }
    
    
}
