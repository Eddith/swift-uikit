//
//  PostVC.swift
//  SocialClub
//
//  Created by Ali Koçman on 18.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class PostVC: UIViewController {
    
    var safeArea: UILayoutGuide!
    let tableView = UITableView()
    
    let postList = [
        PostModel(
            profilImage: UIImage(named: "ali"),
            user: "alikocmnnn",
            university: "İstanbul Ayvansaray Üniversitesi",
            postImage: UIImage(named: "londonbridge"),
            likeImage: UIImage(named: "hearth"),
            commentImage: UIImage(named: "comment"),
            like: "1000",
            commentModel: CommentModel(
                userImage: UIImage(named: "batman"),
                time: "2h", commentUser: "superrmnnn",
                commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde. Lorem Ipsum,",
                commentLike: "4 like"
            )
        ),
        PostModel(
            profilImage: UIImage(named: "superman"),
            user: "supermnnnn",
            university: "İstanbul Aydın Üniversitesi",
            postImage: UIImage(named: "colosseum"),
            likeImage: UIImage(named: "hearth"),
            commentImage: UIImage(named: "comment"),
            like: "1000",
            commentModel: CommentModel(
                userImage: UIImage(named: "ali"), time: "2h",
                commentUser: "superrmnnn",
                commentDetail: "Lorem Ipsum, dizgi ve baskı endüstrisinde. Lorem Ipsum,",
                commentLike: "4 like"
            )
        ),
        PostModel(
            profilImage: UIImage(named: "batman"),
            user: "batmanaasa22",
            university: "Yıldız Teknik Üniversitesi",
            postImage: UIImage(named: "sydney"),
            likeImage: UIImage(named: "hearth"),
            commentImage: UIImage(named: "comment"),
            like: "1000",
            commentModel: CommentModel(
                userImage: UIImage(named: "ali"),
                time: "2h", commentUser: "superenndnn3",
                commentDetail: "Lorem Ipsum pasajlarının vardır. Ancak bunların büyük bir",
                commentLike: "4 like"
            )
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    // MARK: - Private
    
    private func setupView() {
        safeArea = view.layoutMarginsGuide
        view.backgroundColor = .white
        
        setupNavigationView()
        setupTableView()
    }
    
    private func setupNavigationView() {
        navigationItem.title = "Home"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        navigationItem.hidesBackButton = true
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
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(PostView.self, forCellReuseIdentifier: "cellid")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension PostVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 450
    }
}

extension PostVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.postList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        
        guard let postView = cell as? PostView else {
            return cell
        }
        
        let model = postList[indexPath.row]
        postView.set(model: model)
        
        postView.selectionStyle = .none
        
        return postView
    }

}
