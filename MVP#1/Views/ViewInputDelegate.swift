//
//  ViewInputDelegate.swift
//  MVP#1
//
//  Created by Kirill Drozdov on 15.11.2021.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: [Crypto]) // мб тут добавить () еще
    func displayData(i: Int)
}
