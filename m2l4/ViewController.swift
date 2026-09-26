//
//  ViewController.swift
//  m2l4
//
//  Created by AndreyM on 24.09.2026.
//

import UIKit

class ViewController: UIViewController {

    
    private lazy var avatarImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .avatar
        $0.contentMode = .scaleToFill
        $0.layer.cornerRadius = 22
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    private lazy var welcomeLable : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .textColorLight
        $0.text = "welcome"
        $0.font = .systemFont(ofSize: 16)
        return $0
    }(UILabel())
    
    private lazy var nameLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Oleg"
        $0.font = .systemFont(ofSize: 17, weight: .bold)
        return $0
    }(UILabel())
    
    private lazy var notificationAction : UIAction = UIAction { _ in
        let notifications = NotificationsViewController()
        self.navigationController?.pushViewController(notifications, animated: true)
        
    }
    
    private lazy var notificationsBtn : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage.notifications, for: .normal)
        $0.tintColor = .textColorLight
        return $0
    }(UIButton(primaryAction: notificationAction))
    
    @objc
    func setNotifications(){
        let notifications = NotificationsViewController()
        
        self.navigationController?.pushViewController(notifications, animated: true)
    }
    
    private lazy var searchField : UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "searche your trip..."
        $0.backgroundColor = .white
        $0.textColor = .textColorLight
        $0.font = .systemFont(ofSize: 15)
        $0.layer.cornerRadius = 15
        $0.layer.shadowColor = UIColor.gray.cgColor
        $0.layer.shadowOpacity = 0.2
        $0.layer.shadowOffset = .zero
        $0.layer.shadowRadius = 10
        
        $0.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        $0.leftViewMode = .always
        
        $0.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        $0.rightViewMode = .always
        return $0
    }(UITextField())
    
    
    private lazy var searcheBtn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .medium)
        $0.setImage(UIImage(systemName: "magnifyingglass", withConfiguration: config), for: .normal)
        $0.tintColor = .white
        $0.backgroundColor = .appColorBlackExt
        $0.layer.cornerRadius = 15
        return $0
    }(UIButton())
    
    private lazy var popularTripLabel = titleLabel(content: "Popular Trip")
    
    private lazy var seeAllPopularTrip : UIAction = UIAction { _ in
        let seeAll = PopularTripViewController()
        
        self.navigationController?.pushViewController(seeAll, animated: true)
        
    }
    
    private lazy var seeAllBtn1 = seeAllBtn(action: seeAllPopularTrip)
    
    @objc
    func setSeeAllPopularTrip(){
        let seeAll = PopularTripViewController()
        
        self.navigationController?.pushViewController(seeAll, animated: true)
    }
    
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
    
    private lazy var symbolLike : UIImageView = {
        $0.image = .like
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .clear
        
        return $0
    }(UIImageView())
    
    private lazy var titleTextOnView = titleLabel(content: "Greenland")
    private lazy var contentTextOnView = contentText(content: "Greenland, North")
    
    private lazy var details : UIAction = UIAction { _ in
        let details = DetailsViewController()
        
        self.navigationController?.pushViewController(details, animated: true)
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
    
    
    
    //next
    private lazy var popularCategoryLabel = titleLabel(content: "Popular Category")
    
    private lazy var popularCategory : UIAction = UIAction { _ in
        let details = PopularCategoryViewController()
        
        self.navigationController?.pushViewController(details, animated: true)
    }
    
    private lazy var seeAllBtn2 = seeAllBtn(action: popularCategory)
    
    @objc
    func setPopularCategory (){
        let details = PopularCategoryViewController()
        
        self.navigationController?.pushViewController(details, animated: true)
    }
    
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
    //title leabel on view
    private lazy var titleLabelPopularCategory = titleLabel(content: "Mountains")
    //content on view
    private lazy var contentLabelPopularCategory = contentText(content: "Greenland")
    //arrow.symbol on view
    
    private lazy var moreAction : UIAction = UIAction { _ in
        let moreDetails = MoreDetailsViewController()
        
        self.navigationController?.pushViewController(moreDetails, animated: true)
        
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
        
        
        view.addSubview(avatarImageView)
        view.addSubview(welcomeLable)
        view.addSubview(nameLabel)
        view.addSubview(notificationsBtn)
        view.addSubview(searchField)
        view.addSubview(searcheBtn)
        view.addSubview(popularTripLabel)
        view.addSubview(seeAllBtn1)
        
        //view group
        view.addSubview(popularTripView)
        view.addSubview(tripIamgeView)
        view.addSubview(symbolLike)
        view.addSubview(titleTextOnView)
        view.addSubview(contentTextOnView)
        view.addSubview(rightBTn)
        
        
        view.addSubview(popularCategoryLabel)
        view.addSubview(seeAllBtn2)
        
        //view group
        view.addSubview(popularCategoryView)
        view.addSubview(popularCategoryImageView)
        view.addSubview(titleLabelPopularCategory)
        view.addSubview(contentLabelPopularCategory)
        view.addSubview(arrowBtnPopularCategory)
        
        
        NSLayoutConstraint.activate([
            //avatar
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 1),
            avatarImageView.heightAnchor.constraint(equalToConstant: 55),
            avatarImageView.widthAnchor.constraint(equalToConstant: 55),
            
            //welcome label
            welcomeLable.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            welcomeLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            welcomeLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3),
            
            //name label
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            nameLabel.topAnchor.constraint(equalTo: welcomeLable.bottomAnchor, constant: 5),
            
            //кнопка уведомлений
            notificationsBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            notificationsBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            notificationsBtn.heightAnchor.constraint(equalToConstant: 23),
            notificationsBtn.widthAnchor.constraint(equalToConstant: 23),
            
            //строка поиска
            searchField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            searchField.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 30),
            searchField.heightAnchor.constraint(equalToConstant: 50),
            
            //кнопка поиска
            searcheBtn.leadingAnchor.constraint(equalTo: searchField.trailingAnchor, constant: 15),
            searcheBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searcheBtn.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 30),
            searcheBtn.heightAnchor.constraint(equalToConstant: 50),
            
            //label PT
            popularTripLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            popularTripLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            popularTripLabel.topAnchor.constraint(equalTo: searchField.bottomAnchor, constant: 35),
            
            //see all кпопка
            seeAllBtn1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            seeAllBtn1.topAnchor.constraint(equalTo: searchField.bottomAnchor, constant: 35),
            
            
            //view group
            //View trip
            popularTripView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            popularTripView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            popularTripView.topAnchor.constraint(equalTo: popularTripLabel.bottomAnchor, constant: 30),
            popularTripView.heightAnchor.constraint(equalToConstant: 230),
            //view image
            tripIamgeView.leadingAnchor.constraint(equalTo: popularTripView.leadingAnchor, constant: 10),
            tripIamgeView.trailingAnchor.constraint(equalTo: popularTripView.trailingAnchor, constant: -10),
            tripIamgeView.topAnchor.constraint(equalTo: popularTripView.topAnchor, constant: 10),
            tripIamgeView.heightAnchor.constraint(equalToConstant: 140),
            //like image
            symbolLike.trailingAnchor.constraint(equalTo: tripIamgeView.trailingAnchor, constant: -15),
            symbolLike.topAnchor.constraint(equalTo: tripIamgeView.topAnchor, constant: 15),
            symbolLike.heightAnchor.constraint(equalToConstant: 25),
            symbolLike.widthAnchor.constraint(equalToConstant: 25),
            //title text view
            titleTextOnView.leadingAnchor.constraint(equalTo: popularTripView.leadingAnchor, constant: 20),
            titleTextOnView.topAnchor.constraint(equalTo: tripIamgeView.bottomAnchor, constant: 15),
            //content text view
            contentTextOnView.leadingAnchor.constraint(equalTo: popularTripView.leadingAnchor, constant: 20),
            contentTextOnView.topAnchor.constraint(equalTo: titleTextOnView.bottomAnchor, constant: 5),
            //arrow
            rightBTn.topAnchor.constraint(equalTo: tripIamgeView.bottomAnchor, constant: 15),
            rightBTn.trailingAnchor.constraint(equalTo: popularTripView.trailingAnchor, constant: -10),
            rightBTn.heightAnchor.constraint(equalToConstant: 25),
            rightBTn.widthAnchor.constraint(equalToConstant: 25),
            
            //popular category label
            popularCategoryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            popularCategoryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            popularCategoryLabel.topAnchor.constraint(equalTo: popularTripView.bottomAnchor, constant: 35),
            
            //see all кнопка 2
            seeAllBtn2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            seeAllBtn2.topAnchor.constraint(equalTo: popularTripView.bottomAnchor, constant: 35),
            
            //view group
            //view
            popularCategoryView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            popularCategoryView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            popularCategoryView.heightAnchor.constraint(equalToConstant: 110),
            popularCategoryView.topAnchor.constraint(equalTo: popularCategoryLabel.bottomAnchor, constant: 30),
            //image
            popularCategoryImageView.leadingAnchor.constraint(equalTo: popularCategoryView.leadingAnchor, constant: 10),
            popularCategoryImageView.topAnchor.constraint(equalTo: popularCategoryView.topAnchor, constant: 10),
            popularCategoryImageView.heightAnchor.constraint(equalToConstant: 90),
            popularCategoryImageView.widthAnchor.constraint(equalToConstant: 90),
            //title
            titleLabelPopularCategory.leadingAnchor.constraint(equalTo: popularCategoryImageView.trailingAnchor, constant: 10),
            titleLabelPopularCategory.topAnchor.constraint(equalTo: popularCategoryView.topAnchor, constant: 20),
            //content
            contentLabelPopularCategory.leadingAnchor.constraint(equalTo: popularCategoryImageView.trailingAnchor, constant: 10),
            contentLabelPopularCategory.topAnchor.constraint(equalTo: titleLabelPopularCategory.bottomAnchor, constant: 5),
            //button
            arrowBtnPopularCategory.trailingAnchor.constraint(equalTo: popularCategoryView.trailingAnchor, constant: -10),
            arrowBtnPopularCategory.topAnchor.constraint(equalTo: popularCategoryView.topAnchor, constant: 20),
            arrowBtnPopularCategory.heightAnchor.constraint(equalToConstant: 25),
            arrowBtnPopularCategory.widthAnchor.constraint(equalToConstant: 25),
            
            
            
            
        ])
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    private func contentText (content : String) -> UILabel{
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = content
        text.font = .systemFont(ofSize: 14)
        text.textColor = .textColorLight
        return text
    }
    
    private func titleLabel (content : String) -> UILabel{
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = content
        text.font = .systemFont(ofSize: 20, weight: .bold)
        return text
    }
    
    private func seeAllBtn (action : UIAction) -> UIButton{
        let text = UIButton(primaryAction: action)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .white
        text.setTitleColor(.textColorLight, for: .normal)
        text.setTitle("See all", for: .normal)
        text.titleLabel?.font = .systemFont(ofSize: 14)
        return text
    }


}

