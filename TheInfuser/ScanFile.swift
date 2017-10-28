//
//  ScanFile.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 6/25/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit

class ScanFile: UIViewController {
    
    var tempName = ""
    var tempOriginal = ""
    var tempBPM = ""
    var tempAuthor = ""
    var tempNum: Int = 0
    var lineNumbers: Int?
    var myStrings = [String]()
    var song = [String]()
    var finished: Bool = true

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Add.dismissKeyboard))
        // Do any additional setup after loading the view.
        //view.addGestureRecognizer(tap)
        //newSongName.returnKeyType = UIReturnKeyType.done
        
        beginScan()
        
    }
    
    func load() {
        
    }
    /*
 
     func beginScan() {
     var temp: String = ""
     if let path = Bundle.main.path(forResource: "Great Are You Lord", ofType: "txt") {
     do {
     
     let data = try String(contentsOfFile: path, encoding: .utf8)

 
 
 */
    
    
    
    func beginScan() {
        var temp: String = ""
        let songLink = "http://infuser.ibrackin.com/Great%20Are%20You%20Lord.txt"

        if let myURL = URL(string: songLink) {
            
            do {
                let myLink = try String(contentsOf: myURL)
                print("HTML : \(songLink)")
    
                 myStrings = myLink.components(separatedBy: .newlines)
                
            //  print(myStrings.joined(separator: ", "))
                // let range = text.rangeOfString("b")!
                
            
                // line 1 song title:
                tempName = (myStrings[0])
               myStrings.removeFirst()

                
                // line 2 original key:
                tempOriginal = (myStrings[0])
               myStrings.removeFirst()


                // line 3 bpm
                tempBPM = (myStrings[0])
               myStrings.removeFirst()

                
                
                // line 4 author
                tempAuthor = (myStrings[0])
               myStrings.removeFirst()


                
                // line 5 line numbers
                lineNumbers = Int(myStrings[0])
               myStrings.removeFirst()
            
                // Remove space
                myStrings.remove(at: 6)
                
            } catch {
            }
        }
               // for var i in 0..<lineNumbers! {
        while (tempNum != lineNumbers) {
            // Reset finished variable
            finished = true
            temp = (myStrings[tempNum])
                switch temp {
                    
                    case "Intro1":
                        while (finished) {
                    // Update temp number to skip title.
                        tempNum += 1
                        
                    // If a blank is found, break out.
                        if (myStrings[tempNum].isEmpty == true) {
                            print("Empty")
                            finished = false
                            break;
                        }
                        
                        // Add line until blank is found.
                        else {
                            song.append(myStrings[tempNum])
                        }
                    }
                    
                        
                    
                        
                    case "Intro2":
                        break
                    case "Outro1":
                        break
                    case "Outro2":
                        break
                    case "Br1":
                        break
                    case "Br2":
                        break
                    case "Br3":
                        break
                    case "Br4":
                        break
                    case "Ch1":
                        break
                    case "Ch2":
                        break
                    case "Ch3":
                        break
                    case "Ch4":
                        break
                    case "Inter1": // Entire line
                        break
                    case "Inter2": // Entire line
                        break
                    case "Inter3": // Entire line
                        break
                    case "Inter4": // Entire line
                        break
                    case "Instr1": // Entire line
                        break
                    case "Instr2": // Entire line
                        break
                    case "Instr3": // Entire line
                        break
                    case "Instr4": // Entire line
                        break

                    default:
                        
                        if (myStrings[tempNum].isEmpty == true) {
                            print("Empty")
                        }
                        tempNum += 1
                        break
                    
                    }
                    
        }
        
                //let song = WorshipSongs(song: tempName, key: tempOriginal, bpm: tempBPM, author: tempAuthor)!

                
                print(myStrings)
                
                
                
            }
    
    func checkString(value: String) -> String {
        
        
        return ""
    }
    
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     
     
     switch(temp) {
     
     case "Title:":
     break
     case "Original:":
     break
     case "BPM:":
     break
     case "Lines:":
     break
     case "//":
     break
     
     default: break
         
         
         
         // Starts with Empty string
         if (myStrings[i].isEmpty == true) {
         
         }
         
         // Starts with Intro
         if (myStrings[i].hasPrefix("Intro")) {
         
         }
         
         // Starts with Chorus
         if (myStrings[i].hasPrefix("Chorus")) {
         
         }
         
         // Starts with V1
         if (myStrings[i]).hasPrefix("V1") {
         
         }
         
         // Starts with V2
         if (myStrings[i]).hasPrefix("V2") {
         
         }
         
         // Starts with V3
         if (myStrings[i]).hasPrefix("V3") {
         
         }
         
         // Starts with V4
         if (myStrings[i]).hasPrefix("V4") {
         
         }
         
         // Starts with V5
         if (myStrings[i]).hasPrefix("V5") {
         
         }
         
         
         // Starts with Br1
         if (myStrings[i]).hasPrefix("V1") {
         
         }
         
         // Starts with Br2
         if (myStrings[i]).hasPrefix("V2") {
         
         }
         
         // Starts with Br3
         if (myStrings[i]).hasPrefix("V3") {
         
         }
         
         // Starts with Br4
         if (myStrings[i]).hasPrefix("V4") {
         
         }
         
         // Starts with Br5
         if (myStrings[i]).hasPrefix("V5") {
         
         }
         }

     */
    
}
