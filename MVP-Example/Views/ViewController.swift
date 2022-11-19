//
//  ViewController.swift
//  MVP-Example
//
//  Created by Vitalii Homoniuk on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets and variables
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    private var count = 0
    private var testData: [Stocks] = []
    private let presenter = Presenter()
    private weak var viewOutputDelegate: ViewOutputDelegate?
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }

    //MARK: - Functions
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        displayData(index: getRandomInt())
    }
}

//MARK: - Delegates

extension ViewController: ViewInputDelegate {
    
    func setupInitialState() {
        displayData(index: count)
    }
    
    func setupData(with testData: [Stocks]) {
        self.testData = testData
    }
    
    func displayData(index: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[index].name
            tickerLabel.text = testData[index].ticker
            valueLabel.text = String(testData[index].value)
        } else {
            print("Sorry, no data")
        }
    }
    
    func getRandomInt() -> Int {
        let randomInt = Int.random(in: 0 ..< testData.count)
        return randomInt
    }
    
}
