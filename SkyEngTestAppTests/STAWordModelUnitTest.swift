//
//  STAWordModelUnitTest.swift
//  SkyEngTestAppTests
//
//  Created by Вячеслав on 03/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import XCTest
@testable import SkyEngTestApp


class STAWordModelUnitTest: XCTestCase {
    
    let wordDict = [
        "id": 767,
        "text": "check",
        "meanings": [
            [
                "id": 194763,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "проверять",
                    "note": NSNull.self
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/217304/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/217304/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=%CA%A7%C9%9Bk&transcription=1"
            ],
            [
                "id": 194766,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "сдерживать",
                    "note": ""
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/154696/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/154696/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194768,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "отмечать галочкой",
                    "note": ""
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/39507/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/39507/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194771,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "соответствовать",
                    "note": NSNull.self
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/93011/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/93011/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194772,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "блокировать",
                    "note": ""
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/42106/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/42106/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194781,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "атаковать",
                    "note": "короля в шахматной игре"
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/91042/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/91042/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194775,
                "partOfSpeechCode": "v",
                "translation": [
                    "text": "сдавать",
                    "note": "на хранение"
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/40039/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/40039/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194750,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "чек",
                    "note": "банковский"
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/95189/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/95189/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194752,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "корешок",
                    "note": "чека, квитанции, квитанционной книжки и т.п."
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/217305/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/217305/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194754,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "проверка",
                    "note": NSNull.self
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/102072/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/102072/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194761,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "силовой приём",
                    "note": ""
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/2862/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/2862/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194759,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "клетка",
                    "note": "рисунок"
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/5298/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/5298/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194756,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "галочка",
                    "note": "знак"
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/102806/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/102806/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194762,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "шах",
                    "note": ""
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/2273/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/2273/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ],
            [
                "id": 194757,
                "partOfSpeechCode": "n",
                "translation": [
                    "text": "сдерживающий фактор",
                    "note": ""
                ],
                "previewUrl": "//static.skyeng.ru/image/download/project/dictionary/id/154695/width/96/height/72",
                "imageUrl": "//static.skyeng.ru/image/download/project/dictionary/id/154695/width/640/height/480",
                "transcription": "ʧɛk",
                "soundUrl": "//d2fmfepycn0xw0.cloudfront.net?gender=male&accent=british&text=check"
            ]
        ]
        ] as [String : Any]
    
    func testInit() {
        let newWord = STAWord.init(wordDict)
        
        XCTAssertEqual(newWord.text, "check")
        XCTAssertEqual(newWord.meanings.count, 15)
        XCTAssertNotNil(newWord.meanings[0].imageURL, "imageURL - Nil")
    }
}
