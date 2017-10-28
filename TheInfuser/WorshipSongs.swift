//
//  WorshipSongs.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 5/14/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit
import RealmSwift

// For Persistent Storage

    final class WorshipSongs: Object {
    
    dynamic var worshipSet = ""
    dynamic var id = ""
    let songs = List<Worship>()
        
    }


    final class Worship: Object {
        dynamic var song = ""
        dynamic var key = ""
        dynamic var bpm = 0
        dynamic var artist = ""
        dynamic var link = ""
        dynamic var listOfKeysSend = ""
}


/*
    init?(song: String, key: String, bpm: String, artist: String) {
        self.song = song
        self.key = key
        self.bpm = bpm
        self.artist = artist
    }
    
    /* prints object's current state
    
    override var description: String {
        return "Song: \(String(describing: song)), Key: \(String(describing: key)), BPM: \(String(describing: bpm)), Author: \(String(describing: artist))"
        
    }
    
    /*
    func encode(with aCoder: NSCoder) {
        aCoder.encode(song, forKey: PropertyKey.songKey)
        aCoder.encode(key, forKey: PropertyKey.keyKey)
        aCoder.encode(bpm, forKey: PropertyKey.bpmKey)
        aCoder.encode(author, forKey: PropertyKey.authorKey)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let song = aDecoder.decodeObject(forKey: PropertyKey.songKey) as! String
        let key = aDecoder.decodeObject(forKey: PropertyKey.keyKey) as! String
        let bpm = aDecoder.decodeObject(forKey: PropertyKey.bpmKey) as! String
        let author = aDecoder.decodeObject(forKey: PropertyKey.authorKey) as! String
        
        self.init(song: song, key: key, bpm: bpm, author: author)
    }
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("songs")
 */
    
    /* Verses
     
     var verse1: String?
     var verse2: String?
     var verse3: String?
     var verse4: String?
     var verse5: String?
     
     // Chorus
     
     var chorus1: String?
     var chorus2: String?
     var chorus3: String?
     var chorus4: String?
     var chorus5: String?
     
     // Bridge
     
     var bridge1: String?
     var bridge2: String?
     var bridge3: String?
     var bridge4: String?
     var bridge5: String?
     
     // Intro
     
     var intro: String?
     var ending: String?
     
     // Instrumental
     
     var instr1: String?
     var instr2: String?
     
     // Interlude
     
     var inter1: String?
     var inter2: String?
     
     // Build, down, full, pad/drums
     
     var build: Bool?
     var down: Bool?
     var full: Bool?
     var pad: Bool?
     */
}
 */*/
