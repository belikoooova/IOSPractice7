//
//  ViewController.swift
//  CustomNetworking
//
//  Created by Мария Беликова on 01.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private enum Constants {
        static let page: Int = 1;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ArticlesWorker().fetchNews(page: Constants.page) { result in
            print(result as Any)
        }
    }

}

