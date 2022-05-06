//
//  CommentVC.swift
//  SocialClub
//
//  Created by Ali Koçman on 23.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class CommentVC: UIViewController {
    
    private let tapView = CommentTapView()
    
    var safeArea: UILayoutGuide!
    private let tableView = UITableView()
    
    private let bottomView = CommentBottomView()
    
    let commentList = [
        CommentModel(
            userImage: UIImage(named: "ali"),
            time: "2h",
            commentUser: "alikocmma",
            commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen",
            commentLike: "5 like"
        ),
        CommentModel(
            userImage: UIImage(named: "batman"),
            time: "4h",
            commentUser: "batmmasn",
            commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen",
            commentLike: "200 like"
        ),
        CommentModel(
            userImage: UIImage(named: "superman"),
            time: "7h",
            commentUser: "supermn",
            commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen",
            commentLike: "7 like"
        ),
        CommentModel(
            userImage: UIImage(named: "ali"),
            time: "8h",
            commentUser: "velikkkkk",
            commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen",
            commentLike: "55 like"
        ),
        CommentModel(
            userImage: UIImage(named: "batman"),
            time: "9h",
            commentUser: "alikcmnn",
            commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyenfr",
            commentLike: "25 like"
        ),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        safeArea = view.layoutMarginsGuide
        view.backgroundColor = .white
        
        setupNavigation()
        setupTableView()
    }
    
    private func setupNavigation() {
        navigationItem.title = "Comments"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.layer.shadowOpacity = 0.4
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        navigationController?.navigationBar.layer.shadowRadius = 4
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        let top = tableView.topAnchor.constraint(equalTo: safeArea.topAnchor)
        let leading = tableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor)
        let bottom = tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        let trailing = tableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        NSLayoutConstraint.activate([top, leading, bottom, trailing])
        
        tableView.layer.backgroundColor = UIColor.white.cgColor
        tableView.showsVerticalScrollIndicator = true
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(CommentView.self, forCellReuseIdentifier: "cellid")
        tableView.dataSource = self
        tableView.delegate = self
        

        /*view.addSubview(tapView)
        
        tapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tapView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10),
            tapView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tapView.bottomAnchor.constraint(equalTo: tableView.bottomAnchor),
            tapView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        ])
        
        view.addSubview(bottomView)
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomView.topAnchor.constraint(equalTo: tableView.topAnchor, constant: 20),
            bottomView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            bottomView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        ])
          
        tableView.tableFooterView = bottomView
        tableView.tableHeaderView = tapView */
    }
}

extension CommentVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension CommentVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.commentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        
        guard let commentView = cell as? CommentView else {
            return cell
        }
        
        let model = commentList[indexPath.row]
        commentView.set(model: model)
        
        commentView.selectionStyle = .none
        
        return commentView
    }

}
