//
//  MVPPresenter.swift
//  MVP#1
//
//  Created by Kirill Drozdov on 15.11.2021.
//

import Foundation

class MVPPresenter: MVPViewOutput   {
  
    weak var view: MVPViewInput!
    
    var dataManager: DataManager!
    
    
    func didPressedAction() {
        let number = dataManager.obtainNumbers()
        view.showNumber(number)
    }
    
    
}
