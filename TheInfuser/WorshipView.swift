//
//  HomeUpdates.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 8/14/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit
import RealmSwift


class WorshipView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var realm: Realm!
    
    @IBOutlet weak var tableView: UITableView!
    var notificationToken: NotificationToken!
    var worshipList = List<Worship>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        setupRealm()
        //self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: "backColor.png"),for: .default)
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
                    syncConfiguration: SyncConfiguration(user: user, realmURL: URL(string: "realm://67.205.167.139:9080/~/infuser2")!)
                )
                self.realm = try! Realm(configuration: configuration)
                
                // Show initial tasks
                func updateList() {
                    if self.realm.objects(WorshipSongs.self).count == 0 {
                        
                        let list = WorshipSongs()
                        list.id = "1"
                        list.worshipSet = "Worship Set - October 2017"
                        
                        // Add to the Realm inside a transaction
                        try! self.realm.write {
                            self.realm.add(list)
                        }
                    }
                    
                    if self.worshipList.realm == nil, let list = self.realm.objects(WorshipSongs.self).first {
                        self.worshipList = list.songs
                    }
                    self.tableView.reloadData()
                }
                updateList()
                
                // Notify us when Realm changes
                self.notificationToken = self.realm.addNotificationBlock { _ in
                    updateList()
                    self.tableView.reloadData()
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WorshipSongsCell", for: indexPath) as? WorshipSongsCell  else {
            fatalError("Issue with cell creation.")
        }
        
        let myWorship = worshipList[indexPath.row]
        print(myWorship.song)
        
        cell.songLabel.text = myWorship.song
        cell.writer.text = myWorship.artist
        cell.keyLabel.text = myWorship.key
        
        return cell
    }
    
    
    /*
 
     keyLabel: UILabel!
     @IBOutlet weak var songLabel: UILabel!
     @IBOutlet weak var writer
 
 
 */
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worshipList.count
    }
    
    
    @IBAction func sync(_ sender: Any) {
        // Reload table
        
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //getting the selected artist
        let tempWorship = worshipList[indexPath.row]
        print(tempWorship.song)

        
        let w = self.storyboard?.instantiateViewController(withIdentifier: "songView") as! WorshipSongViewController
        
        w.t = tempWorship.song
       w.temp_key = tempWorship.key
       w.temp_bpm = String(tempWorship.bpm)
        w.tempLink = tempWorship.link
        w.listOfKeysReceive = tempWorship.listOfKeysSend
        
    
        
        self.navigationController?.pushViewController(w, animated: true)
        
    
    }
    
    
    
}
