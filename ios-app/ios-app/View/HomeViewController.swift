//
//  HomeViewController.swift
//  ios-app
//
//  Created by Prefect on 19.04.2022.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    
    private let settingsButton: UIButton = {
        let button = UIButton()
        button.layer.borderColor = UIColor(named: "grey")?.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.setImage(.init(named: "settings"), for: .normal)
        button.addTarget(self, action: #selector(setttingsButtonTap), for: .touchUpInside)
        return button
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome"
        return label
    }()
    
    private let homeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "home")
        return imageView
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Delegates
        tableView.delegate = self
        tableView.dataSource = self
        
        configureUI()
    }
    
    //    anotherChildView.snp.makeConstraints { (make) in
    //      make.size.equalTo(childView)
    //      make.top.equalTo(childView.snp.bottom).offset(50)
    //      make.centerX.equalTo(self.view)
    //    }
    
    private func configureUI() {
        view.backgroundColor = .white
    
        view.addSubview(iconImageView)
        iconImageView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(100)
            make.left.equalTo(view.snp.left).offset(24)
            make.height.equalTo(18)
        }
        
        view.addSubview(settingsButton)
        settingsButton.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 45, height: 45))
            make.centerY.equalTo(iconImageView)
            make.right.equalTo(view.snp.right).offset(-24)
        }
//        
//        tableView.snp.makeConstraints { make in        }
    }
    
    @objc private func setttingsButtonTap() {
        print("Settings button tapped")
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        .init()
    }
}
