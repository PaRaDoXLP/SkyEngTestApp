//
//  STAWordsManager.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 01/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit

class STAWordsManager: NSObject {

    static let shared = STAWordsManager()
    
    private override init() {
    }
    
    public func parseWordsFromResult(results : [[String : Any]]) -> Array<STAWord> {
        var resultsArray: [STAWord] = []
        
        for item in results {
            let newWord: STAWord = STAWord.init(item)
            resultsArray.append(newWord)
        }
        
        return resultsArray        
    }
    
}
