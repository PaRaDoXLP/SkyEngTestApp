//
//  STAWord.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 01/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit

//id = 44115;
//meanings =     (
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
//);
//text = Altair;

class STAWord: NSObject {
    
    var wordID : Int!
    var text : String!
    var meanings : Array<STAMeaning> = []
    
    
    public init(_ dictionary: [String: Any]) {
        super.init()
        self.wordID = (dictionary["id"] as! Int)
        self.text = (dictionary["text"] as! String)
        
        let meanings : Array = dictionary["meanings"] as! Array<Any>
        
        if meanings.count > 0 {
            for meaning in meanings {
                let newMeaning = STAMeaning.init(meaning as! [String : Any])
                self.meanings.append(newMeaning)
            }
        }
    }

}
