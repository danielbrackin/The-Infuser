//
//  HomeUpdates.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 8/14/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit
import RealmSwift

class Song: Object {
    dynamic var name = ""
    dynamic var date = ""
}

class SongUpdatesList: Object {
    dynamic var listName = ""
    dynamic var id = ""
    let myList = List<Song>()
    //override static func primaryKey() -> String? {
        //return "id"
    
}


class HomeUpdates:UIViewController, UITableViewDelegate, UITableViewDataSource {
    var realm: Realm!

    @IBOutlet weak var tableview: UITableView!
    var notificationToken: NotificationToken!
    var myList = List<Song>()
    
    
    // Tab bar setup
    var icons = [String]()
    var selectedIcons = [String]()

    @IBOutlet weak var tabController: UITabBar!
    
    @IBOutlet weak var tabBar: UIView!
    @IBOutlet var buttons: [UIButton]!
    var homeViewController: UIViewController!
    var songViewTableController: UIViewController!
    var songViewController: UIViewController!
    var boxViewController: UIViewController!
    var viewControllers: [UIViewController]!

   

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.backgroundColor = UIColor.clear
        tableview.delegate = self
        tableview.dataSource = self
        // Do any additional setup after loading the view.
        
        setupRealm()
        setupMenuBar()
    }
    
    let menuBar: Menu = {
        let mb = Menu()
        return mb
    }()
    private func setupMenuBar() {
        view.addSubview(menuBar)
        //view.addConstraintsWithFormat(format: <#String#>, "H:|[v0]|", views: menuBar)
        
    }
    
    func setupRealm() {
        
        let username = "daniel@ibrackin.com"  // <--- Update this
        let password = "spiderman3"  // <--- Update this
        
        SyncUser.logIn(with: .usernamePassword(username: username, password: password, register: false), server: URL(string: "http://67.205.167.139:9080")!) { user, error in
            guard let user = user else {
                fatalError(String(describing: error))
            }
            
            DispatchQueue.main.async {
                // Open Realm
                let configuration = Realm.Configuration(
                    syncConfiguration: SyncConfiguration(user: user, realmURL: URL(string: "realm://67.205.167.139:9080/~/infuser1")!)
                )
                self.realm = try! Realm(configuration: configuration)
                
                // Show initial tasks
                func updateList() {
                    if self.realm.objects(SongUpdatesList.self).count == 0 {
                        
                        let list = SongUpdatesList()
                        list.id = "1"
                        list.listName = "List 1 - Aug 2017"
                        
                        // Add to the Realm inside a transaction
                        try! self.realm.write {
                            self.realm.add(list)
                        }
                    }
                    
                    if self.myList.realm == nil, let list = self.realm.objects(SongUpdatesList.self).first {
                        self.myList = list.myList
                    }
                    self.tableview.reloadData()
                }
                updateList()
                
                // Notify us when Realm changes
                self.notificationToken = self.realm.addNotificationBlock { _ in
                    updateList()
                    self.tableview.reloadData()
                }
            }
        }
    }
    
    deinit {
        notificationToken.stop()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SongTableViewCell  else {
            fatalError("Issue with cell creation.")
        }
        
        let mySong = myList[indexPath.row]
        print(mySong.name)
        cell.nameLabel.text = mySong.name
        cell.dateLabel.text = mySong.date
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myList.count
    }
    
   
    @IBAction func sync(_ sender: Any) {
        // Reload table
        
        self.tableview.reloadData()
    }
  
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    }

