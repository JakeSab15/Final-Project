//
//  ViewController.swift
//  Final Project
//
//  Created by Jakob Sabatula on 5/2/20.
//  Copyright © 2020 Jakob Sabatula. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.connellsvillepizzaking.com/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }


}

