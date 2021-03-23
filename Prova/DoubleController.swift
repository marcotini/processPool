//
//  DoubleController.swift
//  Prova
//
//  Created by marco on 23/03/21.
//

import UIKit
import WebKit

class DoubleController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    weak var navigationDelegate: WKNavigationDelegate?
    @IBOutlet var webViewDouble: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.processPool = ViewController.processPool
        webViewDouble = WKWebView(frame: .zero, configuration: webConfiguration)
        webViewDouble.uiDelegate = self
        
        view = webViewDouble
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.google.it")
        let request = URLRequest(url: url!)
        webViewDouble.load(request)
    }
}
