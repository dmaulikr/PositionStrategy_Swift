//
//  ViewController.swift
//  webview
//
//  Created by kiiita on 2014/08/06.
//  Copyright (c) 2014年 Yuto Kitakuni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var webview: UIWebView!
    
    var targetURL = "http://position-strategy.ffab0.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddressURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func loadAddressURL() {
        let requestURL = NSURL(string: targetURL)
        let req = NSURLRequest(URL: requestURL)
        webview.loadRequest(req)
    }


}

