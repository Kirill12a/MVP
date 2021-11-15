//
//  MVPViewController.swift
//  MVP#1
//
//  Created by Kirill Drozdov on 15.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLAbel: UILabel!
    @IBAction func buttonPressed(_ sender: Any) {
        self.viewOutputDelegate?.getRandomCount()
    }
    
    private var count = 0
    
    
    private var testData: [Crypto] = []
    private let presenter = Presenter()
    private weak var  viewOutputDelegate: ViewOutputViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInputDelegate(viewInputDelegate: self )
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
        
        UIView.animate(withDuration: 2) { [self] in
            nameLabel.layer.cornerRadius = nameLabel.bounds.width / 2
            nameLabel.layer.borderWidth = 3
            nameLabel.layer.borderColor = #colorLiteral(red: 1, green: 0.4005639922, blue: 0.412996664, alpha: 1).cgColor
         
            tickerLabel.layer.cornerRadius = tickerLabel.bounds.width / 2
            tickerLabel.layer.borderWidth = 3
            tickerLabel.layer.borderColor = #colorLiteral(red: 1, green: 0.4005639922, blue: 0.412996664, alpha: 1).cgColor
            
            valueLAbel.layer.cornerRadius = valueLAbel.bounds.width / 2
            valueLAbel.layer.borderWidth = 3
            valueLAbel.layer.borderColor = #colorLiteral(red: 1, green: 0.4005639922, blue: 0.412996664, alpha: 1).cgColor
            
            
        }
        
        
    }
    
}


extension ViewController: ViewInputDelegate{
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: [Crypto]) {
        self.testData = testData

    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0{
            nameLabel.text = testData[i].name
            tickerLabel.text = testData[i].ticker
            valueLAbel.text = String(testData[i].value)
        }else{
            print("сорри данные нет данных ")
        }
    }
    
    
}

