//
//  ViewController.swift
//  IubendaTest
//
//  Created by Sergei Skurzhanskii on 03.11.2021.
//

import UIKit

import iubenda

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue

        IubendaCMP.askConsent(from: self)
    }
}

