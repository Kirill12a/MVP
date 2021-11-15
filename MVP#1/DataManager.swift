//
//  DataManager.swift
//  MVP#1
//
//  Created by Kirill Drozdov on 15.11.2021.
//

import Foundation

protocol DataManager {
    func obtainNumbers() -> [Int]
}

class DataManagerImlementation: DataManager{
    func obtainNumbers() -> [Int] {
        return [1,2,3,4,5,6,7,8]
    }
    
    
   
}
