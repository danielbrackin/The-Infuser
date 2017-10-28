//
//  Extra.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 8/25/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import Foundation

/*
 
 /* Searching array
 //  print(myStrings.joined(separator: ", "))
 // let range = text.rangeOfString("b")!
 
 /* If song details are included.
 
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
 
 
 // Remove space
 myStrings.remove(at: 6)
 
 */
 
 
 
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
 
 
 
 case "Verse1":
 break
 case "Verse2":
 break
 case "Verse2":
 break
 case "Verse3":
 break
 case "Verse4":
 break
 case "Verse5":
 break
 
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
 }
 
 
 
 /*
 func findKeyandCapo(letterIndex: String) -> String {
 var capoSentence: String = ""
 
 for i in 0..<capo_A.count {
 if capo_A[i] == letterIndex {
 // Construct capo sentence
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 
 for i in 0..<capo_B.count {
 if capo_B[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in B"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 for i in 0..<capo_Bb.count {
 if capo_Bb[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in Bb"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 for i in 0..<capo_C.count {
 if capo_C[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in C"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 for i in 0..<capo_D.count{
 if capo_D[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in D"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 for i in 0..<capo_Db.count {
 if capo_Db[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in Db"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 for i in 0..<capo_Eb.count {
 if capo_Eb[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in Eb"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 for i in 0..<capo_E.count {
 if capo_E[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in E"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 
 
 for i in 0..<capo_F.count {
 if capo_F[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in F"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 for i in 0..<capo_Gb.count {
 if capo_Gb[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in Gb"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 for i in 0..<capo_G.count {
 if capo_G[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in G"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 for i in 0..<capo_Ab.count {
 if capo_Ab[i] == letterIndex {
 // Construct capo sentence
 capoSentence = "Capo " + String(i + 1) + " in Ab"
 
 // Add capo choice
 listOfCapos.append(capoSentence)
 }
 }
 
 
 
 listOfCapos.sort { $0.compare($1, options: .numeric) == .orderedAscending }
 
 return printCapoChoices(tempArray: listOfCapos)
 }
 
 /*
 
 TEMP
 
 var capo1: [String] = ["Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A"]
 var capo2: [String] = ["B", "C", "Db", "D", "Eb", "F", "Gb", "G", "Ab", "A", "Bb", "B"]
 var capo3: [String] = ["C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B", ]
 var capo4: [String] = ["Db", "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B", "C"]
 var capo5: [String] = [ "D", "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db"]
 var capo6: [String] = [ "Eb", "E", "F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db", "D"]
 
 */
 
 /*
 var listOfCapos: [String] = []
 var capo_A: [String] = ["Bb", "B", "C", "Db", "D", "Eb"]
 var capo_Bb: [String] = ["B", "C", "Db", "D", "Eb", "E"]
 var capo_B: [String] = ["C", "Db", "D", "Eb", "E", "F"]
 var capo_C: [String] = ["Db", "D", "Eb", "E", "F", "Gb"]
 var capo_Db: [String] = ["D", "Eb", "E", "F", "Gb", "G"]
 var capo_D: [String] = ["Eb", "E", "F", "Gb", "G", "Ab"]
 var capo_Eb: [String] = ["E", "F", "Gb", "G", "Ab", "A"]
 var capo_E: [String] = ["F", "Gb", "G", "Ab", "A", "Bb"]
 var capo_F: [String] = ["Gb", "G", "Ab", "A", "Bb", "B"]
 var capo_Gb: [String] = ["G", "Ab", "A", "Bb", "B", "C"]
 var capo_G: [String] = ["Ab", "A", "Bb", "B", "C", "Db"]
 var capo_Ab: [String] = ["A", "Bb", "B", "C", "Db", "D"]
 */
 
 func capoChanges() {
 // newKey.text = findKeyandCapo(letterIndex: temp_newKey!)
 //listOfCapos.removeAll()
 

 
 
 */*/*/
