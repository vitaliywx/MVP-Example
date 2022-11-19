//
//  Presenter.swift
//  MVP-Example
//
//  Created by Vitalii Homoniuk on 19.11.2022.
//

import Foundation

class Presenter {
    private weak var viewInputDelegate: ViewInputDelegate?
    var testData = Stocks.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData() {
        self.viewInputDelegate?.setupData(with: self.testData)
    }
}

extension Presenter: ViewOutputDelegate {
    func getData() {
        self.loadTestData()
    }
    
    func saveData() {
        
    }
}
