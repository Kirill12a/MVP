//
//  Presentor.swift
//  MVP#1
//
//  Created by Kirill Drozdov on 15.11.2021.
//

import Foundation

class Presenter{
    weak private var viewInputDelegate: ViewInputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate){
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData(){
        self.viewInputDelegate?.setupData(with: self.testData)
    }
    
    private func random(){
        let randomCount = Int.random(in: 0 ..< testData.count)
        self.viewInputDelegate?.displayData(i: randomCount )
    }
}


extension Presenter: ViewOutputViewDelegate{
    func getRandomCount() {
        random()
    }
    
    
    func getData() {
        self.loadTestData()
        self.viewInputDelegate?.setupInitialState()
    }
    
    func saveData() {
        
    }
    
    
    
    
}
