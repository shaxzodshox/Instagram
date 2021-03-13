//
//  HomeViewController.swift
//  Instagram
//
//  Created by Shakhzod Ilkhomov on 12/03/21.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        initViews()
    }


   //MARK: - Methods
    
    func initViews(){
        addNavigationBar()
        tableView.dataSource = self
        tableView.delegate = self
        
        initPosts()
    }
    
    func initPosts(){
        items.append((Post(user_img: "iv_person1", fullName: "Shakhzod", time: "2 minutes ago", post_img: "iv_post1", likes: 326, post_content: "Life is what happens when you're busy making other plans.")))
        
        items.append((Post(user_img: "iv_person2", fullName: "Lobar", time: "5 minutes ago", post_img: "iv_post2", likes: 541, post_content: "You only live once, but if you do it right, once is enough.")))
    }
    
    //MARK: - Actions
    
    @objc func cameraTapped(){
        print("Menu tapped")
    }
    
    @objc func navigationTapped(){
        print("Refresh tapped")
    }
    
    //MARK: - NavigationBar
    
    func addNavigationBar(){
        title = "Instagram"
        let camera = UIImage(named: "ic_camera")
        let navigation = UIImage(named: "ic_navigation")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(cameraTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: navigation, style: .plain, target: self, action: #selector(navigationTapped))
    }
    
    //MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.iv_smallProfile.image = UIImage(named: item.user_img!)
        cell.iv_postImage.image = UIImage(named: item.post_img!)
        cell.label_fullName.text = item.fullName
        cell.label_time.text = item.time
        cell.label_likes.text = String(item.likes) + " likes"
        cell.label_post.text = item.post_content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
