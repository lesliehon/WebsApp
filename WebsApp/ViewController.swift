//
//  ViewController.swift
//  WebsApp
//
//  Created by Leslie Hon on 9/4/2016.
//  Copyright © 2016 Leslie Hon. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bigView: UIView!
    var messengerWebView: WKWebView!
    let messagerURL: String = "https://..." //Please fill in IM platform URL
    let userAgent: String = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        messengerWebView = WKWebView();
        messengerWebView.scrollView.bounces = false
        
        messengerWebView.frame = bigView.frame
        bigView.addSubview(messengerWebView)
        
        messengerWebView.customUserAgent = userAgent
        
        messengerWebView.load(URLRequest.init(url: URL.init(string: messagerURL)!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

