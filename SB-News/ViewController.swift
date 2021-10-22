//
//  ViewController.swift
//  SB-News
//
//  Created by Danh Tu on 22/10/2021.
//

import UIKit

// TableView
// Custom Cell
// API Caller
// Open the News Story
// Search for News Stories

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News"
        view.backgroundColor = .systemBackground
        
        APICaller.shared.getTopStories { result in
            switch result {
            case .success(let response):
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
}

