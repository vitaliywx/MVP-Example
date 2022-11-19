//
//  ViewInputDelegate.swift
//  MVP-Example
//
//  Created by Vitalii Homoniuk on 19.11.2022.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: [Stocks])
    func displayData(index: Int)
}
