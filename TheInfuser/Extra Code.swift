//
//  Extra Code.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 10/26/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

/*
func attributedText() {
    var aStrings = [NSMutableAttributedString]()
    var aS = NSMutableAttributedString()
    var myaS: String = "D"
    var temp2: String = ""
    
    if let myURL = URL(string: "http://infuser.ibrackin.com/Great%20Are%20You%20Lord.txt") {
        
        do {
            let myLink = try String(contentsOf: myURL)
            print("HTML : \(tempLink)")
            
            myStrings = myLink.components(separatedBy: .newlines)
            
            for val in myStrings {
                let newVal = val as NSString
                let attributedString = NSMutableAttributedString(string: val as String, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15.0)])
                
                let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 15.0)]
                attributedString.addAttributes(boldFontAttribute, range: newVal.range(of: myaS))
                
                aStrings.append(attributedString)
                newOptions.attributedText = attributedString
                
            }
            
        }
            /*
             
             for val in myStrings {
             var pos = NSRange(location: 0, length: myaS.length)
             while true {
             let next = myaS.range(of: val, options: .literal, range: pos)
             if next.location == NSNotFound {    break   }
             
             pos = NSRange(location: next.location+next.length, length: myaS.length-next.location-next.length)
             
             aS.addAttributes(boldFontAttribute, range: next)
             }
             
             for i in myStrings {
             print(i, terminator: "\n" )
             
             temp2 = i + "\n"
             lyricChords.text! += temp2
             
             let attributedString = NSMutableAttributedString(string: i as String, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: 15.0)])
             let boldFontAttribute = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 15.0)]
             */
            
            
        catch {
            print("Error with scan")
        }
    }
    
    /*
     let newURL = URL(string: "http://infuser.ibrackin.com/Great%20Are%20You%20Lord.txt")
     
     if let rtfPath = URL(string: newURL) {
     do {
     let attributedStringWithRtf:NSAttributedString = try NSAttributedString(url: rtfPath, options: [NSDocumentTypeDocumentAttribute:NSRTFTextDocumentType], documentAttributes: nil)
     self.lyricChords.attributedText = attributedStringWithRtf
     } catch let error {
     print("Got an error \(error)")
     }
     }
     */
    
}


func findReplace() {
    var count = 0
    var num = "1"
    
    let numArray: [String] = ["0","1","2","4","5","6","7"]
    if let myURL = URL(string: "http://infuser.ibrackin.com/Great%20Are%20You%20Lord.rtf") {
        do {
            let rtfString: NSAttributedString = try NSAttributedString(url: myURL, options: [NSDocumentTypeDocumentAttribute:NSRTFTextDocumentType], documentAttributes: nil)
            
            var aStrings = [NSAttributedString]()
            for i in aStrings {
                
            }
            
            
            let myLink = try String(contentsOf: myURL)
            print("HTML : \(tempLink)")
            
            myStrings = myLink.components(separatedBy: .newlines)
            
            for val in myStrings {
                // for n in numArray {
                if val.range(of: num) != nil {
                    let newString = val.replacingOccurrences(of: num, with: "20", options: .literal, range: nil)
                    myStrings[count] = newString
                }
                count = count + 1
                
                //}
            }
            
        }
            
        catch {
            print("Error with scan")
        }
        print(myStrings)
        
    }
    
    
    
}


// The number of columns of data
func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
    return 1
}
/*
 // The number of rows of data
 func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
 return arrayOfKeysReceive.count
 }
 */
// The data to return for the row and component (column) that's being passed in
func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return arrayOfKeysReceive[row]
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    songDescription.text = "Key is " + arrayOfKeysReceive[row]
    var val = "\(arrayOfKeysReceive[row])"
    switch(val) {
    case "A":
        options.text = "Capo 2: A - Capo 4: G - Capo 5: E"
        break
    case "B":
        options.text = "Capo 2: G - Capo 4: F - Capo 6: E"
        break
    default:
        break
    }
    
    
    
    // Locate the song on the server here:
    
}

@IBAction func changeKey(_ sender: UIStepper) {
    temp_newKey_value = Int(sender.value)
    key.removeAll()
    capoNumber.text = "1" // Set default capo
    keyPicker.selectRow(0, inComponent: 0, animated: false)
    switch (temp_newKey_value) {
        
    case 0?:
        // Check in Eb, E, F, Gb, G, Ab
        
        temp_newKey = "A"
        displayNewKey.text = "A"
        let keyOfA: [String] = ["Ab", "G", "Gb", "F", "E", "Eb"]
        key.append(contentsOf: keyOfA)
        keyPicker.reloadAllComponents()
        
        changeLetters(oldK: findOldArray(), newK: ["B", "C#m","D#m","E","F#","G#m", "A#m"])
        
        
        break
    case 1?:
        // Check in D, Eb, E, F, Gb, G
        
        temp_newKey = "Ab"
        displayNewKey.text = "Ab"
        let keyOfAb: [String] = ["G","Gb","F","E","Eb","D"]
        key.append(contentsOf: keyOfAb)
        keyPicker.reloadAllComponents()
        
        // changeLetters(oldK: findOldArray(), newK: ["B", "C#m","D#m","E","F#","G#m", "A#m"])
        
        break
    case 2?:
        
        temp_newKey = "B"
        displayNewKey.text = "B"
        let keyOfB: [String] = ["Bb","A","Ab","G","Gb","F"]
        key.append(contentsOf: keyOfB)
        keyPicker.reloadAllComponents()
        
        changeLetters(oldK: findOldArray(), newK: ["B", "C#m","D#m","E","F#","G#m", "A#m"])
        
        
        break
    case 3?:
        temp_newKey = "Bb"
        displayNewKey.text = "Bb"
        let keyOfBb: [String] = ["A","Ab","G","Gb","F","E"]
        key.append(contentsOf: keyOfBb)
        keyPicker.reloadAllComponents()
        
        
        break
    case 4?:
        temp_newKey = "C"
        displayNewKey.text = "C"
        let keyOfC: [String] = ["B","Bb","A","Ab","G","Gb"]
        key.append(contentsOf: keyOfC)
        keyPicker.reloadAllComponents()
        
        changeLetters(oldK: findOldArray(), newK: ["B", "C#m","D#m","E","F#","G#m", "A#m"])
        
        
        break
    case 5?:
        temp_newKey = "D"
        displayNewKey.text = "D"
        let keyOfD: [String] = ["Db","C","B","Bb","A","Ab"]
        key.append(contentsOf: keyOfD)
        keyPicker.reloadAllComponents()
        
        changeLetters(oldK: findOldArray(), newK: ["D", "Em","F#m","G","A","Bm","C#m"])
        
        
        break
    case 6?:
        temp_newKey = "Db"
        displayNewKey.text = "Db"
        let keyOfD: [String] = ["C","B","Bb","A","Ab","G"]
        key.append(contentsOf: keyOfD)
        keyPicker.reloadAllComponents()
        
        break
    case 7?:
        temp_newKey = "E"
        displayNewKey.text = "E"
        let keyOfE: [String] = ["Eb","D","Db","C","B","Bb"]
        key.append(contentsOf: keyOfE)
        keyPicker.reloadAllComponents()
        
        break
    case 8?:
        temp_newKey = "Eb"
        displayNewKey.text = "Eb"
        let keyOfEb: [String] = ["D","Db","C","B","Bb","A"]
        key.append(contentsOf: keyOfEb)
        keyPicker.reloadAllComponents()
        
        break
    case 9?:
        temp_newKey = "F"
        displayNewKey.text = "F"
        let keyOfF: [String] = ["E","Eb","D","Db","C","B"]
        key.append(contentsOf: keyOfF)
        keyPicker.reloadAllComponents()
        
        break
    case 10?:
        temp_newKey = "G"
        displayNewKey.text = "G"
        let keyOfG: [String] = ["Gb","F","E","Eb","D","Db"]
        key.append(contentsOf: keyOfG)
        keyPicker.reloadAllComponents()
        
        
        // Lyric changes
        
        changeLetters(oldK: findOldArray(), newK: ["G","Am","Bm","C","D","Em","F#m"])
        
        break
    case 11?:
        temp_newKey = "Gb"
        displayNewKey.text = "Gb"
        let keyOfGb: [String] = ["F","E","Eb","D","Db","C"]
        key.append(contentsOf: keyOfGb)
        keyPicker.reloadAllComponents()
        
        break
        
    default: break
        
    }
    
    if nocapo == true {
        val = temp_newKey!
        songDescription.text = "The song below will be in the key of \(String(describing: val))"
        
    }
        
    else {
        val = key[0]
        songDescription.text = "The song below will be in the key of \(String(describing: val))"
    }
    
}

func findOldArray() -> [String] {
    switch(temp_newKey!) {
    case "A":
        return ["A", "Bm","C#m","D","E","F#m","G#m"]
    case "B":
        return ["B", "C#m","D#m","E","F#","G#m", "A#m"]
    case "C":
        return ["C", "Dm","Em","F","G","Am","Bm"]
    case "D":
        return ["D", "Em","F#m","G","A","Bm","C#m"]
    case "E":
        return ["E", "F#m","G#m","A","B","C#m","D#m"]
    case "G":
        return ["G", "Am","Bm","C","D","En","F#m"]
        
    default:
        // Key not found
        print("Key not found")
        return []
    }
}

// Bb B C Db D Eb E F Gb G Ab A Bb B C Db D
// The new key we are playing in with a capo

@IBAction func lock(_ sender: Any) {
    
    if lock.currentImage == UIImage(named: "lock.png") {
        
        keyPicker.isUserInteractionEnabled = false
        keyPicker.tintColor = UIColor.darkGray
        
        changeKeyStepper.isUserInteractionEnabled = false
        changeKeyStepper.tintColor = UIColor.darkGray
        noNewKey.isEnabled = false
        capoButton.isEnabled = false
        resetButton.isEnabled = false
        
        lock.setImage(UIImage(named:"unlock.png"), for: .normal)
    }
    else {
        
        
        keyPicker.isUserInteractionEnabled = true
        keyPicker.tintColor = UIColor(red:0.01, green:0.48, blue:1.0, alpha:1.0)
        
        changeKeyStepper.isUserInteractionEnabled = true
        changeKeyStepper.tintColor = UIColor(red:0.01, green:0.48, blue:1.0, alpha:1.0)
        noNewKey.isEnabled = true
        capoButton.isEnabled = true
        resetButton.isEnabled = true
        
        lock.setImage(UIImage(named:"lock.png"), for: .normal)
        
        
    }
}

@IBAction func noCapo(_ sender: Any) {
    
    if capoButton.currentTitle == "No capo" {
        nocapo = true
        keyToPlayIn.isHidden = true
        capoTitle.isHidden = true
        keyPicker.isHidden = true
        capoNumber.isHidden = true
        
        // Flip title to Capo
        capoButton.setTitle("Capo", for: .normal)
        
        val = displayNewKey.text!
        songDescription.text = "The song below will be in the key of " + val
    }
    else {
        
        nocapo = false
        keyToPlayIn.isHidden = false
        capoTitle.isHidden = false
        keyPicker.isHidden = false
        capoNumber.isHidden = false
        
        // Flip title to Capo
        capoButton.setTitle("No capo", for: .normal)
        
        // Protection for empty key array
        
        if key.isEmpty == false {
            val = key[0]
            songDescription.text = "The song below will be in the key of \(String(describing: val))"
        }
            
        else {
            songDescription.text = "The song below will be in the key of ?"
        }
    }
    
}

@IBAction func noNewkey(_ sender: Any) {
    
    if noNewKey.currentTitle == "No new key" {
        displayNewKey.text = "-"
        capoButton.isHidden = true
        resetButton.isHidden = true
        keyToPlayIn.isHidden = true
        capoTitle.isHidden = true
        keyPicker.isHidden = true
        capoNumber.isHidden = true
        changeKeyStepper.isHidden = true
        lock.setImage(UIImage(named:"lock.png"), for: .normal)
        lock.isHidden = true
        
        val = temp_key!
        songDescription.text = "The song below will be in the key of \(String(describing: val))"
        
        noNewKey.setTitle("New key", for: .normal)
        
    }
    else {
        
        displayNewKey.text = "?"
        capoButton.isHidden = false
        resetButton.isHidden = false
        keyToPlayIn.isHidden = false
        capoTitle.isHidden = false
        keyPicker.isHidden = false
        capoNumber.isHidden = false
        changeKeyStepper.isHidden = false
        lock.setImage(UIImage(named:"lock.png"), for: .normal)
        lock.isHidden = false
        
        key.removeAll()
        keyPicker.reloadAllComponents()
        displayNewKey.text = "?"
        capoNumber.text = "?"
        
        songDescription.text = "The song below will be in the key of ?"
        
        // Flip title to Capo
        noNewKey.setTitle("No new key", for: .normal)
        
    }
    
}

@IBAction func reset(_ sender: Any) {
    
    capoButton.setTitle("No capo", for: .normal)
    
    keyToPlayIn.isHidden = false
    capoTitle.isHidden = false
    keyPicker.isHidden = false
    capoNumber.isHidden = false
    
    keyPicker.isUserInteractionEnabled = true
    keyPicker.tintColor = UIColor(red:0.01, green:0.48, blue:1.0, alpha:1.0)
    
    changeKeyStepper.isUserInteractionEnabled = true
    changeKeyStepper.tintColor = UIColor(red:0.01, green:0.48, blue:1.0, alpha:1.0)
    
    lock.setImage(UIImage(named:"lock.png"), for: .normal)
    
    
    
    
    key.removeAll()
    keyPicker.reloadAllComponents()
    displayNewKey.text = "?"
    capoNumber.text = "?"
    songDescription.text = "The song below will be in the key of ?"
    changeKeyStepper.value = 0
    
    // Reload textview
    beginScan()
    
}

func changecolor() {
    let letters: [String] = ["Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "A#m","F#m", "Bm","Am", "Em","C#m"]
    
    for s in letters {
        let attrStr = NSMutableAttributedString(string: lyricChords.text)
        let inputLength = attrStr.string.characters.count
        let searchString = s
        let searchLength = searchString.characters.count
        var range = NSRange(location: 0, length: attrStr.length)
        
        while (range.location != NSNotFound) {
            range = (attrStr.string as NSString).range(of: searchString, options: [], range: range)
            if (range.location != NSNotFound) {
                attrStr.addAttribute(NSForegroundColorAttributeName, value: UIColor.yellow, range: NSRange(location: range.location, length: searchLength))
                range = NSRange(location: range.location + range.length, length: inputLength - (range.location + range.length))
            }
        }
    }
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}

func printCapoChoices(tempArray: [String]) -> String {
    for capochoice in 0..<tempArray.count {
        finalSentence += String(tempArray[capochoice]) + " "
    }
    return finalSentence
}
/*
 func numberOfComponents(in pickerView: UIPickerView) -> Int {
 return 1
 }
 
 
 
 func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
 return key.count
 }
 
 func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
 return key[row]
 }
 
 func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
 
 
 
 capoVal = row + 1
 print(capoVal!)
 capoNumber.text = String(describing: capoVal!)
 val = key[row]
 songDescription.text = "The song below will be in the key of \(String(describing: val))"
 }
 */
/*func check() {
 var aStrings = [NSAttributedString]()
 if let myURL = URL(string: tempLink) {
 
 do {
 let myLink = try String(contentsOf: myURL)
 print("HTML : \(tempLink)")
 
 myStrings = myLink.components(separatedBy: .newlines)
 
 for i in myStrings {
 
 let searchString = "Intro"
 let baseString = i + "\n"
 
 
 lyricChords.text = "TEST"
 attributed = NSMutableAttributedString(string: baseString)
 
 do
 {
 let regex = try! NSRegularExpression(pattern: searchString,options: .caseInsensitive)
 for match in regex.matches(in: baseString, options: NSRegularExpression.MatchingOptions(), range: NSRange(location: 0, length: baseString.characters.count)) as [NSTextCheckingResult] {
 
 attributed.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellow, range: match.range)
 }
 //self.lyricChords.attributedText = attributed
 aStrings.append(attributed)
 
 
 
 }
 
 }
 
 for a in aStrings {
 var temp = ""
 //print(a, terminator: "\n" )
 
 
 temp = a
 lyricChords.textStorage a
 }
 
 
 //lyricChords.attributedText = attributed
 
 
 }
 catch {
 print("Error with scan")
 }
 
 
 }
 
 }
 */


func changeLetters(oldK: [String], newK: [String]) {
    var temp1: String
    
    // String array should already be loaded.
    for c in 0...6 {
        for i in myStrings {
            temp1 = i + "\n"
            
            var v1 = oldK[c]
            var v2 = newK[c]
            
            temp1 = temp1.replacingOccurrences(of: v1, with: v2, options: .literal, range: nil)
            
            // if temp1.uppercased().range(of: oldK[0]) != nil {
            // }
            /*
             temp1 = temp1.replacingOccurrences(of: oldK[0], with: newK[0])
             temp1 = temp1.replacingOccurrences(of: oldK[1], with: newK[1])
             temp1 = temp1.replacingOccurrences(of: oldK[2], with: newK[2])
             temp1 = temp1.replacingOccurrences(of: oldK[3], with: newK[3])
             temp1 = temp1.replacingOccurrences(of: oldK[4], with: newK[4])
             temp1 = temp1.replacingOccurrences(of: oldK[5], with: newK[5])
             temp1 = temp1.replacingOccurrences(of: oldK[6], with: newK[6])
             temp1 = temp1.replacingOccurrences(of: oldK[7], with: newK[7])
             
             */
            print(temp1, terminator: "\n" )
            lyricChords.text! += temp1
            
        }
        
    }
}


func go() {
    
    webV.delegate = self as UIWebViewDelegate
    let url = URL(string: tempLink)
    webV.loadRequest(URLRequest(url: url!))
    /*
     
     if let rtfPath = URL(string: tempLink) {
     do {
     let attributedStringWithRtf:NSAttributedString = try NSAttributedString(url: rtfPath, options: [NSDocumentTypeDocumentAttribute:NSRTFTextDocumentType], documentAttributes: nil)
     self.lyricChords.attributedText = attributedStringWithRtf
     } catch let error {
     print("Got an error \(error)")
     }
     }
     */
    
}
/* Regular strings
 let myURLString = tempLink
 guard let myURL = URL(string: myURLString) else {
 print("Error: \(myURLString) doesn't seem to be a valid URL")
 return
 }
 
 do {
 let myHTMLString = try String(contentsOf: myURL, encoding: .utf8)
 print("HTML : \(myHTMLString)")
 lyricChords.attributedText = myHTMLString.data.attributedString
 
 } catch let error {
 print("Error: \(error)")
 }
 
 
 }
 
 
 }
 
 extension Data {
 var attributedString: NSAttributedString? {
 do {
 return try NSAttributedString(data: self, options:[NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue], documentAttributes: nil)
 } catch {
 print(error)
 }
 return nil
 }
 }
 extension String {
 var data: Data {
 return Data(utf8)
 }
 }
 */

}

*/
