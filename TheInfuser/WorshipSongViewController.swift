//
//  WorshipSongViewController.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 5/29/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit

class WorshipSongViewController: UIViewController,  UINavigationControllerDelegate, UIWebViewDelegate {
    /*
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    */
    // UIPickerViewDelegate, UIPickerViewDataSource,

    var t: String = ""
    @IBOutlet weak var originalKey: UILabel!
    @IBOutlet weak var displayNewKey: UILabel!
    //@IBOutlet weak var displayYesNo: UISwitch!
    @IBOutlet weak var changeKeyStepper: UIStepper!
    @IBOutlet weak var currentBPM: UILabel!
    @IBOutlet weak var lyricChords: UITextView!
    @IBOutlet weak var capoNumber: UILabel!
    
    @IBOutlet weak var keyPicker: UIPickerView!
    var finalSentence: String = ""
    
    @IBOutlet weak var lock: UIButton!


    var nocapo: Bool?
    @IBOutlet weak var capoButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var noNewKey: UIButton!
    
    @IBOutlet weak var keyToPlayIn: UILabel!
    
    @IBOutlet weak var capoTitle: UILabel!
    
    
    
    @IBOutlet weak var webV: UIWebView!
    var temp_song: String?
    var temp_key: String?
    var temp_bpm: String?

    var songs: WorshipSongs?

    // Key changes
    var temp_newKey_value: Int?
    var temp_newKey: String?
    var capo: String?
    var capoVal: Int?
    var key: [String] = []
    var tempLink: String = ""
 
    var capoNumbers: [Int] = [1, 2, 3, 4, 5, 6]
    var val = ""
    
    
    
    // File reading
    
    var tempName = ""
    var tempOriginal = ""
    var tempBPM = ""
    var tempAuthor = ""
    var tempNum: Int = 0
    var lineNumbers: Int?
    var song = [String]()
    var finished: Bool = true
    var attributed = NSMutableAttributedString()

    // New variables
    
    var newLink: String = ""
    var myStrings = [String]()
    @IBOutlet weak var available: UIPickerView!
    var listOfKeysReceive: String?
    var arrayOfKeysReceive = [String]()
    @IBOutlet weak var songDescription: UILabel!
    @IBOutlet weak var options: UITextView!
    @IBOutlet weak var newOptions: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.available.delegate = self
        self.available.dataSource = self
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Roboto-Regular", size: 16)!]
        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name: "Roboto-Regular", size: 16)!], for: UIControlState.normal)

        
        // Song description
        songDescription.text = "The song below will be in the key of ?"
        self.navigationItem.title = t

        // Picker helper functions.
        //keyPicker.delegate = self
      //  keyPicker.dataSource = self
        
        // Lock settings.
      //  lock.isHidden = false

        // Title and data from previous pages.
        // navigationItem.title = temp_song
        //songName.text = "Song name: " + temp_song!
         originalKey.text = "Original key: " + temp_key!
         currentBPM.text = "BPM: " + temp_bpm!
        
        arrayOfKeysReceive = scanList(list: listOfKeysReceive!)
        
    }
    
    // The key that we will be playing in. 
    
    func scanList(list: String) -> [String] {
        let newList = list.components(separatedBy: ",")
        print(newList)
        return newList
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayOfKeysReceive.count
    }

    /*
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var songkey = arrayOfKeysReceive[row]
        // Check for sharps/flats
        let prefix = "http://infuser.ibrackin.com/Songs/"
        
        newLink = prefix + t + "/" + t + songkey + ".txt"
        
        // print(arrayOfKeysReceive[row])
        print(newLink)
        beginScan(l: newLink)
        return arrayOfKeysReceive[row]
    }
    */
    
    func linkHandler() {
        
    }
    

    func beginScan(l: String) {
        newOptions.text = ""
        var temp2: String = ""
        
       // songVals.append("Intro1", "")

        
        if let myURL = URL(string: l) {
            
            do {
                let myLink = try String(contentsOf: myURL)
                myStrings = []
                myStrings = myLink.components(separatedBy: .newlines)
                
                /* line 5 line numbers
                lineNumbers = Int(myStrings[0])
                myStrings.removeFirst()
                */
                for i in myStrings {
                    temp2 = i + "\n"
                    newOptions.text! += temp2
                    
                }
                
                newOptions.text! += "\n"
                //newOptions.font = UIFont(name: "Avenir", size: 15)
            }
            
            catch {
                print("Error with scan")
                newOptions.text = ""
            }
        }
    }
}
   
