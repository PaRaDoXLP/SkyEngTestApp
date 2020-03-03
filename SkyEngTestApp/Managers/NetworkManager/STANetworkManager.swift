//
//  STANetworkManager.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 01/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit
import AFNetworking

struct RequestURL {
    static let searchWord = "api/public/v1/words/search"
}

class STANetworkManager: AFHTTPSessionManager {
    
    static let baseURL = URL.init(string:"https://dictionary.skyeng.ru")

    static let shared = STANetworkManager.init(baseURL: baseURL)
    
    private init(baseURL url: URL?) {
        super.init(baseURL: url, sessionConfiguration: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func GET_words(withSearch search: String, page: Int, completionHandler: @escaping (Array<STAWord>?, Error?) -> Void) {
        
        let params: Dictionary = ["search" : search,
                                  "page" : page,
                                  "pageSize" : 20
            ] as [String : Any]
        
        self.get(RequestURL.searchWord,
                 parameters: params,
                 progress: nil,
                 success: { (task, responseObject) in
                    let result: Array = responseObject as! [[String : Any]]
                    print("RESPONSE GET WORDS \(result)")
                    
                    let wordsArray = STAWordsManager.shared.parseWordsFromResult(results: result)
                    completionHandler(wordsArray, nil)
                    
        },
                 failure:{ (task, error) in
                    completionHandler(nil, error)
        })
    }
    
    func stopAllRequests() {
        self.operationQueue.cancelAllOperations()
    }
}
