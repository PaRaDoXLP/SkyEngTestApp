//
//  STAMeaning.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 01/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit
//            {
//        id = 84960;
//        imageUrl = "//static.skyeng.ru/image/download/project/dictionary/id/124549/width/640/height/480";
//        partOfSpeechCode = n;
//        previewUrl = "//static.skyeng.ru/image/download/project/dictionary/id/124549/width/96/height/72";
//        soundUrl = "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=Altair";
//        transcription = "";
//        translation =             {
//            note = "<null>";
//            text = "\U0410\U043b\U044c\U0442\U0430\U0438\U0440";
//        };
//    }
class STAMeaning: NSObject {
    
    var meaningID : Int!
    var imageURL : URL?
    var previewURL : URL?
    var soundURL : URL?
    var transctription : String?
    var translationText : String?
    var translationNote : String?
    
    public init(_ dictionary: [String: Any]) {
        super.init()
        
        self.meaningID = (dictionary["id"] as! Int)
        if !self.isNilOrNull(anyObj: dictionary["imageUrl"]) {
            self.imageURL = URL.init(string:"https:"+(dictionary["imageUrl"] as! String))
        }
        if !self.isNilOrNull(anyObj: dictionary["previewUrl"]) {
            self.previewURL = URL.init(string:"https:"+(dictionary["previewUrl"] as! String))
        }
        
        if !self.isNilOrNull(anyObj: dictionary["soundUrl"]) {
            self.soundURL = URL.init(string:"https:"+(dictionary["soundUrl"] as! String))
        }
        if !self.isNilOrNull(anyObj: dictionary["transcription"]) {
            self.transctription = (dictionary["transcription"] as! String)
        }
        let translationDict = dictionary["translation"] as! [String : Any]
        self.translationText = translationDict["text"] as? String
        self.translationNote = translationDict["note"] as? String
    }
    
    private func isNilOrNull(anyObj: Any?) -> Bool {
        let isNil = anyObj == nil
        let isNull = (anyObj as AnyObject).isKind(of: NSNull.self)
        return isNil || isNull
    }

}
