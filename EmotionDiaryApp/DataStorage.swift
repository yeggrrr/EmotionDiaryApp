//
//  DataStorage.swift
//  EmotionDiaryApp
//
//  Created by YJ on 5/22/24.
//

import Foundation

class DataStorage {
    static let shared = DataStorage()
    
    var dataList = Array<Int>.init(repeating: 0, count: 9)
}
